#Requires -Version 7.4
BeforeAll {
    $script:courseRoot=Split-Path -Parent $PSScriptRoot
    $script:course=(Get-Content (Join-Path $script:courseRoot 'curriculum/lab-content.yml') -Raw|ConvertFrom-Json).labs
    $script:actualGit=(Get-Command git -CommandType Application|Select-Object -First 1).Source
    function global:git {
        $forward=@($args)
        if($forward -contains 'push'){
            $position=[array]::IndexOf($forward,'origin')
            if($position -lt 0){throw 'Offline push requires the owned origin.'}
            $forward[$position]=$global:FoundationFixture.bare
        }
        if($forward -contains 'clone' -and ($forward -join ' ') -match 'https?://|git@'){throw 'Remote clone cannot escape the offline fixture.'}
        & $global:FoundationFixture.git @forward
        $global:LASTEXITCODE=$LASTEXITCODE
        if($LASTEXITCODE){throw "Local Git fixture command failed: $($forward -join ' ')"}
        if($args -contains 'push'){$global:FoundationFixture.head=(& $global:FoundationFixture.git -C $args[1] rev-parse HEAD).Trim()}
    }
    function global:gh {
        $line=$args -join ' ';$global:LASTEXITCODE=0
        if($line -eq '--version'){return 'gh version offline-fixture'}
        if($line -match '^api user'){return '{"login":"fixture","id":123}'}
        if($line -match '^issue list '){return '[]'}
        if($line -match '^issue create '){
            $global:FoundationFixture.issue=@{title=$args[[array]::IndexOf($args,'--title')+1];body=$args[[array]::IndexOf($args,'--body')+1];state='OPEN'}
            return 'https://github.com/fixture/owned/issues/1'
        }
        if($line -match '^issue edit '){$global:FoundationFixture.issue.body=$args[[array]::IndexOf($args,'--body')+1];return}
        if($line -match '^issue view '){return ($global:FoundationFixture.issue|ConvertTo-Json)}
        if($line -match '^repo view '){return (@{nameWithOwner=$global:FoundationFixture.repo;viewerPermission='ADMIN';isArchived=$false;visibility='PRIVATE'}|ConvertTo-Json)}
        if($line -match '^repo clone '){
            $target=$args[3];& $global:FoundationFixture.git init --initial-branch=main $target|Out-Null
            & $global:FoundationFixture.git -C $target remote add origin "https://github.com/$($global:FoundationFixture.repo).git"
            return
        }
        if($line -match '^pr create '){
            $global:FoundationFixture.pr=@{body=$args[[array]::IndexOf($args,'--body')+1];state='OPEN';baseRefName='main';headRefName="feature/$($global:FoundationFixture.run)";mergeStateStatus='BLOCKED';reviewDecision='REVIEW_REQUIRED';mergedAt=$null}
            return 'https://github.com/fixture/owned/pull/1'
        }
        if($line -match '^pr view '){return ($global:FoundationFixture.pr|ConvertTo-Json)}
        if($line -match 'required_pull_request_reviews'){
            if($line -match 'required_approving_review_count=(\d+)'){$global:FoundationFixture.reviewers=[int]$Matches[1]}
            return (@{required_approving_review_count=$global:FoundationFixture.reviewers}|ConvertTo-Json)
        }
        if($line -match '^api --method PUT repos/.+/branches/main/protection'){
            $policy=Get-Content $args[[array]::IndexOf($args,'--input')+1] -Raw|ConvertFrom-Json
            $global:FoundationFixture.reviewers=$policy.required_pull_request_reviews.required_approving_review_count
            return '{}'
        }
        if($line -match '^api repos/.+/branches/main/protection'){return (@{required_pull_request_reviews=@{required_approving_review_count=$global:FoundationFixture.reviewers};allow_force_pushes=@{enabled=$false};allow_deletions=@{enabled=$false}}|ConvertTo-Json -Depth 5)}
        if($line -match '^api repos/.+/branches/feature'){return (@{name="feature/$($global:FoundationFixture.run)"}|ConvertTo-Json)}
        if($line -match '^api repos/.+/commits/main'){return $global:FoundationFixture.head}
        if($line -match '^run list '){return (ConvertTo-Json -InputObject @(@{databaseId=42;headSha=$global:FoundationFixture.head;status='completed';conclusion='success'}))}
        if($line -match '^run watch '){return}
        throw "Unexpected GitHub operation in offline sequence: $line"
    }
    function global:az {
        $line=$args -join ' ';$global:LASTEXITCODE=0
        if($line -match '^version '){return '2.0.0-offline-fixture'}
        if($line -match '^account show '){return (@{subscription=$global:FoundationFixture.subscription;tenant='fixture';cloud='AzureCloud'}|ConvertTo-Json)}
        if($line -match '^devops project list '){return '[]'}
        if($line -match '^boards work-item create '){
            $global:FoundationFixture.item=@{id=7;fields=@{'System.TeamProject'=$global:FoundationFixture.project;'System.WorkItemType'='Task'};relations=@()}
            return ($global:FoundationFixture.item|ConvertTo-Json -Depth 6)
        }
        if($line -match '^boards work-item relation add '){
            $global:FoundationFixture.item.relations+=@{rel='Hyperlink';url=$args[[array]::IndexOf($args,'--target-url')+1]}
            return ($global:FoundationFixture.item|ConvertTo-Json -Depth 6)
        }
        if($line -match '^boards work-item show '){return ($global:FoundationFixture.item|ConvertTo-Json -Depth 6)}
        if($line -match '^boards query '){return '[{"id":7}]'}
        if($line -match '^repos list '){return (ConvertTo-Json -Depth 6 -InputObject @(@{id='fixture-repo';name='owned';remoteUrl=$global:FoundationFixture.bare;isDisabled=$false;project=@{name=$global:FoundationFixture.project}}))}
        if($line -match '^pipelines list '){return '[]'}
        if($line -match '^pipelines create '){
            $global:FoundationFixture.pipeline=@{id=17;name="ci-$($global:FoundationFixture.run)";repository=@{id='fixture-repo'};project=@{name=$global:FoundationFixture.project};process=@{yamlFilename='azure-pipelines.yml'}}
            return ($global:FoundationFixture.pipeline|ConvertTo-Json -Depth 6)
        }
        if($line -match '^pipelines show '){return ($global:FoundationFixture.pipeline|ConvertTo-Json -Depth 6)}
        if($line -match '^pipelines (run|runs show) '){return (@{id=42;status='completed';result='succeeded';sourceVersion=$global:FoundationFixture.head}|ConvertTo-Json)}
        throw "Unexpected Azure operation in offline sequence: $line"
    }
}

Describe 'Complete foundation/source/CI sequence <LabId>' -ForEach @(@{LabId='00'},@{LabId='01'},@{LabId='04'},@{LabId='05'},@{LabId='07'},@{LabId='08'},@{LabId='09'},@{LabId='10'}) {
    It 'runs all tasks using real local tools and isolated provider responses, then detects and repairs its fault' {
        $RepoRoot=$script:courseRoot;$RunId='offline-foundation';$GhRepo='fixture/owned';$AdoProject='owned-project';$AdoOrganization='https://dev.azure.com/fixture'
        $SubscriptionId='44444444-4444-4444-8444-444444444444';$ResourceGroup="rg-az400-$LabId-$RunId";$Location='westeurope'
        $lab=$script:course|Where-Object id -eq $LabId;$LabRoot=Join-Path $RepoRoot "labs/$($lab.slug)";$WorkRoot=Join-Path $TestDrive $LabId
        New-Item -ItemType Directory -Path $WorkRoot|Out-Null
        $bare=Join-Path $WorkRoot 'provider.git'; & $script:actualGit init --bare --initial-branch=main $bare|Out-Null
        $global:FoundationFixture=@{git=$script:actualGit;bare=$bare;repo=$GhRepo;project=$AdoProject;subscription=$SubscriptionId;run=$RunId;head='';reviewers=0}
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.commands))|Out-Null; & ([scriptblock]::Create($cp.validate)) }
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.validate)) }
        & ([scriptblock]::Create($lab.breakFix.assert)); & ([scriptblock]::Create($lab.breakFix.trigger))
        { & ([scriptblock]::Create($lab.breakFix.assert)) }|Should -Throw "*$($lab.breakFix.expectedFailure)*"
        & ([scriptblock]::Create($lab.breakFix.repair)); & ([scriptblock]::Create($lab.breakFix.assert))
        foreach($cp in $lab.checkpoints){ & ([scriptblock]::Create($cp.validate)) }
    }
}
AfterAll {
    foreach($name in @('git','gh','az')){Remove-Item -LiteralPath "Function:\$name" -ErrorAction SilentlyContinue}
    Remove-Variable FoundationFixture -Scope Global -ErrorAction SilentlyContinue
}
