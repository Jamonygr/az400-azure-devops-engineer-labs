#Requires -Version 7.4
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true

function Invoke-LabNative {
    [CmdletBinding()]
    param([Parameter(Mandatory)][string]$File, [Parameter(Mandatory)][string[]]$Arguments)
    $output = & $File @Arguments
    if ($LASTEXITCODE -ne 0) { throw "$File failed with exit code $LASTEXITCODE. Review the redacted console output." }
    return ($output -join "`n")
}

function Save-LabJson {
    param([string]$Path, [object]$Value)
    $parent = Split-Path -Parent $Path
    [void][IO.Directory]::CreateDirectory($parent)
    $temporary = "$Path.pending"
    [IO.File]::WriteAllText($temporary, ($Value | ConvertTo-Json -Depth 40), [Text.UTF8Encoding]::new($false))
    Move-Item -LiteralPath $temporary -Destination $Path -Force
}

function Get-Az400Context {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string]$Definition,
        [Parameter(Mandatory)][ValidatePattern('^[a-z][a-z0-9-]{2,23}$')][string]$RunId,
        [string]$GithubOwner = $env:AZ400_GITHUB_OWNER,
        [string]$AdoOrganization = $env:AZ400_ADO_ORGANIZATION,
        [string]$SubscriptionId = $env:AZ400_SUBSCRIPTION_ID,
        [ValidatePattern('^[a-z][a-z0-9]+$')][string]$Location = 'westeurope'
    )
    $lab = Get-Content -LiteralPath $Definition -Raw | ConvertFrom-Json -AsHashtable
    $Definition = [IO.Path]::GetFullPath($Definition)
    $repoRoot = [IO.Path]::GetFullPath((Join-Path (Split-Path $Definition -Parent) '../..'))
    if ($GithubOwner -and $GithubOwner -notmatch '^[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,38})$') { throw 'Invalid GitHub owner.' }
    if ($AdoOrganization -and $AdoOrganization -notmatch '^https://dev\.azure\.com/[a-zA-Z0-9][a-zA-Z0-9-]{0,49}/?$') {
        throw 'Use the exact https://dev.azure.com/organization URL, without a project or query string.'
    }
    if ($SubscriptionId -and $SubscriptionId -notmatch '^[0-9a-fA-F-]{36}$') { throw 'SubscriptionId must be a GUID.' }
    $name = "az400-$($lab.id)-$RunId"
    $context = [ordered]@{
        labId = $lab.id; runId = $RunId; repoRoot = $repoRoot
        labRoot = Split-Path -Parent $Definition
        workRoot = Join-Path $repoRoot ".state/$($lab.id)/$RunId"
        githubOwner = $GithubOwner; ghRepo = $(if ($GithubOwner) { "$GithubOwner/$name" } else { '' })
        adoOrganization = $AdoOrganization.TrimEnd('/'); adoProject = $name; adoProfileId = ''
        subscriptionId = $SubscriptionId; location = $Location
        resourceGroup = "rg-$name"
    }
    $statePath = Join-Path $context.workRoot 'run.json'
    if (Test-Path -LiteralPath $statePath) {
        $journal = Get-Content -LiteralPath $statePath -Raw | ConvertFrom-Json -AsHashtable
        foreach ($key in @('labId', 'runId', 'githubOwner', 'adoOrganization', 'subscriptionId', 'location')) {
            if ($journal.context[$key] -cne $context[$key]) { throw "Context mismatch for $key. Use the original context or a fresh run ID." }
        }
        if ($journal.context.ContainsKey('adoProfileId')) { $context.adoProfileId = $journal.context.adoProfileId }
    }
    return $context
}

function Read-LabJournal {
    param([System.Collections.IDictionary]$Context)
    $path = Join-Path $Context.workRoot 'run.json'
    if (Test-Path -LiteralPath $path) { return Get-Content -LiteralPath $path -Raw | ConvertFrom-Json -AsHashtable }
    return [ordered]@{
        schemaVersion = '1.0.0'; labId = $Context.labId; runId = $Context.runId
        ownerToken = [Guid]::NewGuid().ToString('N'); context = $Context
        status = 'initialized'; objects = @(); checkpoints = @(); liveVerified = $false
    }
}

function Save-LabJournal {
    param([System.Collections.IDictionary]$Context, [System.Collections.IDictionary]$Journal)
    Save-LabJson -Path (Join-Path $Context.workRoot 'run.json') -Value $Journal
}

function Get-LabRemoteObject {
    param([System.Collections.IDictionary]$Context, [System.Collections.IDictionary]$Object)
    switch ($Object.kind) {
        'github-repository' {
            $raw = Invoke-LabNative gh @('api', "repos/$($Object.name)")
            $data = $raw | ConvertFrom-Json -AsHashtable
            return @{ id = [string]$data.id; marker = [string]$data.description }
        }
        'ado-project' {
            $raw = Invoke-LabNative az @('devops', 'project', 'show', '--project', $Object.name, '--organization', $Context.adoOrganization, '--output', 'json')
            $data = $raw | ConvertFrom-Json -AsHashtable
            return @{ id = [string]$data.id; marker = [string]$data.description }
        }
        'azure-resource-group' {
            $raw = Invoke-LabNative az @('group', 'show', '--name', $Object.name, '--subscription', $Context.subscriptionId, '--output', 'json')
            $data = $raw | ConvertFrom-Json -AsHashtable
            return @{ id = [string]$data.id; marker = [string]$data.tags['az400-owner'] }
        }
        default { throw "Unsupported ownership kind: $($Object.kind). Add a reviewed adapter before automating it." }
    }
}

function Get-LabAdoProfileId {
    param([System.Collections.IDictionary]$Context)
    $raw = Invoke-LabNative az @('devops', 'invoke', '--organization', $Context.adoOrganization, '--area', 'profile', '--resource', 'profiles', '--route-parameters', 'id=me', '--api-version', '7.1', '--http-method', 'GET', '--output', 'json')
    $adoProfile = $raw | ConvertFrom-Json -AsHashtable
    if (-not $adoProfile.ContainsKey('id') -or -not $adoProfile.id) { throw 'Azure DevOps profile identity cannot be established.' }
    return [string]$adoProfile.id
}

function Test-LabRemoteAbsent {
    param([System.Collections.IDictionary]$Context, [System.Collections.IDictionary]$Object)
    # Listing is deliberate: authentication, throttling or network failure must
    # never be interpreted as proof that an object has been deleted.
    switch ($Object.kind) {
        'github-repository' {
            $login = Invoke-LabNative gh @('api', 'user', '--jq', '.login')
            if ($login.Trim() -ine $Context.githubOwner) { throw 'GitHub authentication changed; absence cannot be established for the original owner.' }
            $items = Invoke-LabNative gh @('api', '--paginate', 'user/repos?per_page=100&affiliation=owner', '--jq', '.[].full_name')
            return $Object.name -notin ($items -split "`r?`n")
        }
        'ado-project' {
            if (-not $Context.adoProfileId) { throw 'Original Azure DevOps profile is missing; project absence cannot be established.' }
            if ((Get-LabAdoProfileId $Context) -cne $Context.adoProfileId) { throw 'Azure DevOps authentication changed; project absence cannot be established.' }
            $continuation = ''
            $seenTokens = @()
            do {
                $arguments = @('devops', 'project', 'list', '--organization', $Context.adoOrganization, '--top', '100', '--state-filter', 'all', '--output', 'json')
                if ($continuation) { $arguments += @('--continuation-token', $continuation) }
                $data = Invoke-LabNative az $arguments | ConvertFrom-Json -AsHashtable
                foreach ($project in @($data.value)) {
                    if ($project.name -ceq $Object.name -and $project.state -ne 'deleted') { return $false }
                }
                $continuation = $(if ($data.ContainsKey('continuationToken')) { [string]$data.continuationToken } else { '' })
                if ($continuation -in $seenTokens) { throw 'Azure DevOps pagination did not advance; absence is not established.' }
                if ($continuation) { $seenTokens += $continuation }
            } while ($continuation)
            return $true
        }
        'azure-resource-group' {
            $raw = Invoke-LabNative az @('group', 'exists', '--name', $Object.name, '--subscription', $Context.subscriptionId, '--output', 'json')
            return ($raw.Trim() -eq 'false')
        }
        default { throw 'Unsupported absence check.' }
    }
}

function Assert-LabOwnership {
    param([System.Collections.IDictionary]$Context, [System.Collections.IDictionary]$Object, [string]$OwnerToken)
    $expected = switch ($Object.kind) {
        'github-repository' { $Context.ghRepo }
        'ado-project' { $Context.adoProject }
        'azure-resource-group' { $Context.resourceGroup }
        default { throw 'Unreviewed object kind in ownership journal.' }
    }
    if ($Object.name -cne $expected) { throw 'Ownership refusal: object name is outside this run.' }
    $remote = Get-LabRemoteObject -Context $Context -Object $Object
    if (($Object.id -and $remote.id -cne $Object.id) -or $remote.marker -cne $OwnerToken) {
        throw 'Ownership refusal: exact ID or remote ownership marker does not match.'
    }
    return $remote
}

function Register-LabObject {
    [CmdletBinding()]
    param([Parameter(Mandatory)][string]$Kind, [Parameter(Mandatory)][string]$Id, [Parameter(Mandatory)][string]$Name)
    # Child objects inside a run's repository/project/resource group are covered
    # by the exact parent boundary. External tenant objects cannot be silently
    # admitted to the journal or deleted by this generic helper.
    if (-not $script:ActiveContext) { throw 'No active owned lab run.' }
    $journal = Read-LabJournal $script:ActiveContext
    $entry = @{ kind = $Kind; id = $Id; name = $Name; state = 'created' }
    [void](Assert-LabOwnership $script:ActiveContext $entry $journal.ownerToken)
    if ($Id -notin @($journal.objects | ForEach-Object { $_.id })) { $journal.objects += $entry }
    Save-LabJournal $script:ActiveContext $journal
}

function New-LabBoundary {
    [CmdletBinding(SupportsShouldProcess)]
    param([System.Collections.IDictionary]$Context, [System.Collections.IDictionary]$Journal, [string]$Kind, [string]$Name)
    $entry = @($Journal.objects | Where-Object { $_.kind -eq $Kind }) | Select-Object -First 1
    if ($entry) {
        if ($entry.state -eq 'deleted') { throw 'This run was cleaned. Choose a new run ID for another deployment.' }
        if (-not (Test-LabRemoteAbsent $Context $entry)) {
            $remote = Assert-LabOwnership $Context $entry $Journal.ownerToken
            $entry.id = $remote.id; $entry.state = 'created'
            Save-LabJournal $Context $Journal
            return
        }
        if ($entry.state -eq 'created') { throw 'A previously owned boundary is now inaccessible or absent. Preserve the journal and investigate; do not recreate it under the old ID.' }
    } else {
        $entry = @{ kind = $Kind; name = $Name; id = ''; state = 'planned' }
        if (-not (Test-LabRemoteAbsent $Context $entry)) { throw "Ownership refusal: $Name already exists. Choose a fresh run ID." }
        $Journal.objects += $entry
        Save-LabJournal $Context $Journal
    }
    if (-not $PSCmdlet.ShouldProcess($Name, "Create owned $Kind boundary")) { return }
    switch ($Kind) {
        'github-repository' {
            [void](Invoke-LabNative gh @('repo', 'create', $Name, '--private', '--description', $Journal.ownerToken))
        }
        'ado-project' {
            [void](Invoke-LabNative az @('devops', 'project', 'create', '--name', $Name, '--description', $Journal.ownerToken, '--visibility', 'private', '--source-control', 'git', '--process', 'Agile', '--organization', $Context.adoOrganization, '--output', 'json'))
        }
        'azure-resource-group' {
            [void](Invoke-LabNative az @('group', 'create', '--name', $Name, '--location', $Context.location, '--subscription', $Context.subscriptionId, '--tags', "az400-owner=$($Journal.ownerToken)", "az400-run=$($Context.runId)", "az400-lab=$($Context.labId)", '--output', 'json'))
        }
    }
    # Planned state is saved before creation. A timeout can be recovered only
    # when the object at the exact name carries this journal's random marker.
    $remote = Assert-LabOwnership $Context $entry $Journal.ownerToken
    $entry.id = $remote.id; $entry.state = 'created'
    Save-LabJournal $Context $Journal
}

function Remove-LabBoundary {
    [CmdletBinding(SupportsShouldProcess)]
    param([System.Collections.IDictionary]$Context, [System.Collections.IDictionary]$Object, [string]$OwnerToken)
    if ($Object.state -eq 'deleted') { return }
    if (Test-LabRemoteAbsent $Context $Object) {
        if ($Object.ContainsKey('deleteSucceeded') -and $Object.deleteSucceeded) { $Object.state = 'deleted'; return }
        throw 'The object is absent from an access-filtered listing, but no successful delete is recorded. Absence is unknown; preserve the journal for an authorized audit.'
    }
    $remote = Assert-LabOwnership $Context $Object $OwnerToken
    $Object.id = $remote.id
    if (-not $PSCmdlet.ShouldProcess($Object.name, "Delete owned $($Object.kind) boundary")) { return }
    switch ($Object.kind) {
        'github-repository' { [void](Invoke-LabNative gh @('repo', 'delete', $Object.name, '--yes')) }
        'ado-project' { [void](Invoke-LabNative az @('devops', 'project', 'delete', '--id', $Object.id, '--organization', $Context.adoOrganization, '--yes')) }
        'azure-resource-group' { [void](Invoke-LabNative az @('group', 'delete', '--name', $Object.name, '--subscription', $Context.subscriptionId, '--yes')) }
    }
    $Object.deleteSucceeded = $true
    if (-not (Test-LabRemoteAbsent $Context $Object)) {
        throw 'Deletion has not completed. Preserve state and retry cleanup after the service finishes.'
    }
    $Object.state = 'deleted'
}

function Invoke-Az400Lab {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][ValidateSet('Preflight', 'Setup', 'Validate', 'Cleanup')][string]$Operation,
        [Parameter(Mandatory)][string]$Definition,
        [Parameter(Mandatory)][ValidatePattern('^[a-z][a-z0-9-]{2,23}$')][string]$RunId,
        [string]$GithubOwner = $env:AZ400_GITHUB_OWNER,
        [string]$AdoOrganization = $env:AZ400_ADO_ORGANIZATION,
        [string]$SubscriptionId = $env:AZ400_SUBSCRIPTION_ID,
        [string]$Location = 'westeurope',
        [switch]$Execute, [switch]$ProvisionOnly, [switch]$AcknowledgeCost,
        [switch]$AcknowledgeTenantChange, [switch]$AllowPaidFeatures
    )
    $contextArgs = @{ Definition = $Definition; RunId = $RunId; GithubOwner = $GithubOwner; AdoOrganization = $AdoOrganization; SubscriptionId = $SubscriptionId; Location = $Location }
    $context = Get-Az400Context @contextArgs
    $lab = Get-Content -LiteralPath $Definition -Raw | ConvertFrom-Json -AsHashtable
    $RepoRoot = $context.repoRoot; $LabRoot = $context.labRoot; $WorkRoot = $context.workRoot
    Write-Verbose "Using repository $RepoRoot and lab artifacts $LabRoot."
    $GhRepo = $context.ghRepo; $AdoProject = $context.adoProject
    $ResourceGroup = $context.resourceGroup
    $platforms = @($lab.platforms)
    if ($Operation -in @('Setup', 'Cleanup') -and -not $Execute) {
        return [pscustomobject]@{ operation = $Operation; status = 'preview'; context = $context; platforms = $platforms; checkpoints = @($lab.checkpoints | ForEach-Object { $_.id }); changesMade = $false }
    }
    if ($Operation -eq 'Setup') {
        if ($lab.cost -ne 'none' -and -not $AcknowledgeCost) { throw 'Review cost gates and pass -AcknowledgeCost.' }
        $tenantGate = $lab.id -in @('20', '21') -or ($lab.ContainsKey('requiresTenantChange') -and $lab.requiresTenantChange)
        if ($tenantGate -and -not $AcknowledgeTenantChange) { throw 'Identity exercises require -AcknowledgeTenantChange after review.' }
    }
    if ($Operation -in @('Preflight', 'Setup', 'Validate')) {
        $tools = @('git', 'pwsh', 'dotnet')
        if ('github' -in $platforms) { $tools += 'gh'; if (-not $GithubOwner) { throw 'Set AZ400_GITHUB_OWNER or pass -GithubOwner.' } }
        if ('azure-devops' -in $platforms -or 'azure' -in $platforms) { $tools += 'az' }
        if ('azure-devops' -in $platforms -and -not $AdoOrganization) { throw 'Set AZ400_ADO_ORGANIZATION or pass -AdoOrganization.' }
        if ('azure' -in $platforms -and -not $SubscriptionId) { throw 'Set AZ400_SUBSCRIPTION_ID or pass -SubscriptionId.' }
        foreach ($tool in ($tools | Select-Object -Unique)) { if (-not (Get-Command $tool -ErrorAction SilentlyContinue)) { throw "Missing prerequisite: $tool" } }
        if ('github' -in $platforms) {
            $login = Invoke-LabNative gh @('api', 'user', '--jq', '.login')
            if ($login.Trim() -ine $GithubOwner) { throw 'GitHub authentication does not match the explicitly selected personal sandbox owner.' }
        }
        if ('azure' -in $platforms) {
            $account = Invoke-LabNative az @('account', 'show', '--subscription', $SubscriptionId, '--output', 'json') | ConvertFrom-Json -AsHashtable
            if ($account.id -ine $SubscriptionId) { throw 'Azure subscription context mismatch.' }
            if ($lab.ContainsKey('providers')) {
                foreach ($provider in @($lab.providers)) {
                    $registration = Invoke-LabNative az @('provider', 'show', '--namespace', $provider, '--subscription', $SubscriptionId, '--query', 'registrationState', '--output', 'tsv')
                    if ($registration.Trim() -ne 'Registered') { throw "Provider $provider is not registered. Obtain approval and register it separately before this lab; preflight does not change subscription-wide providers." }
                }
            }
        }
        if ('azure-devops' -in $platforms) {
            [void](Invoke-LabNative az @('extension', 'show', '--name', 'azure-devops', '--output', 'json'))
            $profileId = Get-LabAdoProfileId $context
            if ($context.adoProfileId -and $context.adoProfileId -cne $profileId) { throw 'Azure DevOps authentication changed since provisioning.' }
            $context.adoProfileId = $profileId
            [void](Invoke-LabNative az @('devops', 'project', 'list', '--organization', $AdoOrganization, '--top', '1', '--output', 'json'))
        }
        if ($lab.ContainsKey('extensions')) {
            foreach ($extension in @($lab.extensions)) {
                [void](Invoke-LabNative az @('extension', 'show', '--name', $extension, '--output', 'json'))
            }
        }
        if ($Operation -eq 'Preflight') { return [pscustomobject]@{ status = 'ready'; context = $context; changesMade = $false } }
    }
    $journal = Read-LabJournal $context
    $script:ActiveContext = $context
    if ($Operation -eq 'Setup') {
        Save-LabJournal $context $journal
        try {
            if ('github' -in $platforms) { New-LabBoundary $context $journal 'github-repository' $GhRepo }
            if ('azure-devops' -in $platforms) { New-LabBoundary $context $journal 'ado-project' $AdoProject }
            if ('azure' -in $platforms) { New-LabBoundary $context $journal 'azure-resource-group' $ResourceGroup }
            if (-not $ProvisionOnly) {
                foreach ($checkpoint in $lab.checkpoints) {
                    if (@($journal.checkpoints | Where-Object { $_.id -eq $checkpoint.id -and $_.status -eq 'executed' }).Count) {
                        Write-Verbose "Preserving completed checkpoint $($checkpoint.id); use a new run ID to repeat the full lane."
                        continue
                    }
                    $paidGate = $lab.id -eq '23' -or ($checkpoint.Contains('requiresPaidFeatures') -and $checkpoint.requiresPaidFeatures)
                    if ($paidGate -and -not $AllowPaidFeatures) {
                        $journal.checkpoints = @($journal.checkpoints | Where-Object { $_.id -ne $checkpoint.id })
                        $journal.checkpoints += @{ id = $checkpoint.id; status = 'skipped'; reason = 'Paid feature prerequisite not acknowledged' }
                        continue
                    }
                    Write-Information "Executing $($checkpoint.id): $($checkpoint.title)" -InformationAction Continue
                    $journal.activeCheckpoint = $checkpoint.id
                    Save-LabJournal $context $journal
                    & ([scriptblock]::Create($checkpoint.commands)) | Out-Host
                    $journal.checkpoints = @($journal.checkpoints | Where-Object { $_.id -ne $checkpoint.id })
                    $journal.checkpoints += @{ id = $checkpoint.id; status = 'executed' }
                    Save-LabJournal $context $journal
                }
                [void]$journal.Remove('activeCheckpoint')
            }
            $journal.status = $(if (@($journal.checkpoints | Where-Object { $_.status -eq 'skipped' }).Count) { 'partial' } elseif ($ProvisionOnly) { 'provisioned' } else { 'configured' })
        } catch { $journal.status = 'failed'; Save-LabJournal $context $journal; throw }
        Save-LabJournal $context $journal
        return [pscustomobject]@{ status = $journal.status; statePath = Join-Path $WorkRoot 'run.json'; liveVerified = $false }
    }
    if ($Operation -eq 'Validate') {
        if (-not (Test-Path -LiteralPath (Join-Path $WorkRoot 'run.json'))) { throw 'No owned run exists. Complete setup first.' }
        if ($journal.status -notin @('provisioned', 'configured', 'partial')) { throw 'Validation requires a current provisioned run. Failed, initialized, or cleaned runs cannot use stale evidence as a live result.' }
        foreach ($ownedObject in @($journal.objects)) {
            if ($ownedObject.state -ne 'created') { throw 'A boundary is not in the owned created state; recover setup before validation.' }
            [void](Assert-LabOwnership $context $ownedObject $journal.ownerToken)
        }
        $results = @()
        foreach ($checkpoint in $lab.checkpoints) {
            $paidGate = $lab.id -eq '23' -or ($checkpoint.Contains('requiresPaidFeatures') -and $checkpoint.requiresPaidFeatures)
            if ($paidGate -and -not $AllowPaidFeatures) { $results += @{ id = $checkpoint.id; status = 'skipped'; reason = 'Paid prerequisite' }; continue }
            try {
                if (-not $checkpoint.Contains('validate') -or -not $checkpoint.validate) { throw 'Missing read-only checkpoint validator.' }
                & ([scriptblock]::Create($checkpoint.validate)) | Out-Null
                $results += @{ id = $checkpoint.id; status = 'passed' }
            } catch { $results += @{ id = $checkpoint.id; status = 'failed'; reason = 'Assertion failed; inspect the checkpoint validation command.' } }
        }
        $status = $(if (@($results | Where-Object { $_.status -eq 'failed' }).Count) { 'failed' } elseif (@($results | Where-Object { $_.status -eq 'skipped' }).Count) { 'partial' } else { 'passed' })
        $report = @{ schemaVersion = '1.0.0'; labId = $lab.id; runId = $RunId; status = $status; checkpoints = $results; verifiedAt = [DateTime]::UtcNow.ToString('o') }
        Save-LabJson (Join-Path $WorkRoot 'validation.json') $report
        return [pscustomobject]$report
    }
    if ($Operation -eq 'Cleanup') {
        $residual = @()
        # Reverse provisioning order: Azure workload, ADO project, GitHub repo.
        $objects = @($journal.objects)
        [array]::Reverse($objects)
        foreach ($object in $objects) {
            try { Remove-LabBoundary $context $object $journal.ownerToken } catch { $residual += @{ kind = $object.kind; name = $object.name; reason = 'Cleanup refused or service deletion pending. Inspect original journal and remote marker.' } }
            Save-LabJournal $context $journal
        }
        $journal.status = $(if ($residual.Count) { 'cleanup-incomplete' } else { 'cleaned' })
        Save-LabJournal $context $journal
        $report = @{ schemaVersion = '1.0.0'; labId = $lab.id; runId = $RunId; status = $(if ($residual.Count) { 'partial' } else { 'passed' }); residual = $residual; retained = @('Ignored local evidence and ownership journal', 'Service soft-delete records where applicable') }
        Save-LabJson (Join-Path $WorkRoot 'cleanup.json') $report
        return [pscustomobject]$report
    }
}

Export-ModuleMember -Function Invoke-Az400Lab, Get-Az400Context, Register-LabObject
