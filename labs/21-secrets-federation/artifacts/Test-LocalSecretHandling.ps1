#Requires -Version 7.4
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidateSet('References','FileLifetime')][string]$Mode,
    [Parameter(Mandatory)][string]$WorkRoot
)
$ErrorActionPreference='Stop'
if (-not (Test-Path -LiteralPath $WorkRoot -PathType Container)) { throw 'Use the existing private lab workspace.' }
if ($Mode -eq 'References') {
    # Offline syntax/rotation exercise. This does not resolve a vault or secret.
    $cases=@(
        @{reference='@Microsoft.KeyVault(SecretUri=https://training-vault.vault.azure.net/secrets/signing-input)';accepted=$true;versioned=$false},
        @{reference='@Microsoft.KeyVault(SecretUri=https://training-vault.vault.azure.net/secrets/signing-input/0123456789abcdef0123456789abcdef)';accepted=$true;versioned=$true},
        @{reference='@Microsoft.KeyVault(SecretUri=http://training-vault.vault.azure.net/secrets/signing-input)';accepted=$false;versioned=$false},
        @{reference='@Microsoft.KeyVault(SecretUri=https://training-vault.vault.azure.net.attacker.invalid/secrets/signing-input)';accepted=$false;versioned=$false},
        @{reference='plaintext-synthetic-value';accepted=$false;versioned=$false}
    )
    $results=foreach($case in $cases){
        $valid=$case.reference -cmatch '^@Microsoft\.KeyVault\(SecretUri=https://[a-z0-9-]+\.vault\.azure\.net/secrets/[a-zA-Z0-9-]+(?:/([a-f0-9]{32}))?\)$'
        $versioned=$valid -and -not [string]::IsNullOrEmpty($Matches[1])
        if($valid -ne $case.accepted -or $versioned -ne $case.versioned){throw 'Reference syntax or rotation interpretation failed.'}
        @{accepted=$valid;versioned=$versioned}
    }
    @{fixtureOnly=$true;resolvedLive=$false;accepted=@($results|Where-Object accepted).Count;rejected=@($results|Where-Object {-not $_.accepted}).Count;versioned=@($results|Where-Object versioned).Count}|ConvertTo-Json|Set-Content (Join-Path $WorkRoot 'reference-results.json')
} else {
    # Model the agent task's finally cleanup with a harmless temporary fixture.
    # Provider Library authorization and agent ACLs must still be verified live.
    $reports=foreach($fail in @($false,$true)){
        $path=Join-Path $WorkRoot ('synthetic-secure-file-'+[Guid]::NewGuid().ToString('N')+'.tmp')
        $consumed=$false;$failureObserved=$false
        try {
            Set-Content -LiteralPath $path -Value 'NOT-A-REAL-KEY' -NoNewline
            $hash=(Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash
            $expected=[Convert]::ToHexString([Security.Cryptography.SHA256]::HashData([Text.Encoding]::UTF8.GetBytes('NOT-A-REAL-KEY')))
            if($hash -cne $expected){throw 'Synthetic input integrity failed.'}
            $consumed=$true
            if($fail){throw 'EXPECTED_CONSUMER_FAILURE'}
        } catch {
            if($_.Exception.Message -ne 'EXPECTED_CONSUMER_FAILURE'){throw}
            $failureObserved=$true
        } finally { if(Test-Path -LiteralPath $path){Remove-Item -LiteralPath $path} }
        $absent=-not (Test-Path -LiteralPath $path)
        if(-not $consumed -or -not $absent -or $failureObserved -ne $fail){throw 'Temporary input lifetime contract failed.'}
        @{consumerFailed=$failureObserved;consumed=$consumed;removed=$absent}
    }
    @{fixtureOnly=$true;providerAuthorizationVerified=$false;runs=@($reports)}|ConvertTo-Json -Depth 5|Set-Content (Join-Path $WorkRoot 'secure-file-results.json')
}
