#requires -Version 7.4
BeforeAll {
 $script:CourseRoot=Split-Path -Parent $PSScriptRoot
 $script:RecoveryLab=(Get-Content (Join-Path $script:CourseRoot 'curriculum/lab-content.yml') -Raw|ConvertFrom-Json).labs|Where-Object id -eq '06'
}
Describe 'Lab 06 complete local sequence' {
 It 'preserves recovery invariants through history removal and a rejected/repaired fault' {
  $RepoRoot=$script:CourseRoot;$LabRoot=Join-Path $RepoRoot "labs/$($script:RecoveryLab.slug)"
  $RunId='offline-recovery';$WorkRoot=Join-Path $TestDrive $RunId
  New-Item -ItemType Directory $WorkRoot|Out-Null
  foreach($checkpoint in $script:RecoveryLab.checkpoints){. ([scriptblock]::Create($checkpoint.commands))}
  foreach($checkpoint in $script:RecoveryLab.checkpoints){. ([scriptblock]::Create($checkpoint.validate))}
  . ([scriptblock]::Create($script:RecoveryLab.breakFix.assert))
  . ([scriptblock]::Create($script:RecoveryLab.breakFix.trigger))
  { . ([scriptblock]::Create($script:RecoveryLab.breakFix.assert)) }|Should -Throw "*$($script:RecoveryLab.breakFix.expectedFailure)*"
  . ([scriptblock]::Create($script:RecoveryLab.breakFix.repair))
  . ([scriptblock]::Create($script:RecoveryLab.breakFix.assert))
  foreach($checkpoint in $script:RecoveryLab.checkpoints){. ([scriptblock]::Create($checkpoint.validate))}
 }
}
