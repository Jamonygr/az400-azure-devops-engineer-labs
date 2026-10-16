@{
    Baseline = '2026-10-16'
    PowerShellMinimum = '7.4'
    DotNetSdk = '10.0.402'
    DotNetRuntime = '10.0.13'
    BicepMinimum = '0.48.1'
    RequiredCommands = @('pwsh', 'git', 'gh', 'az', 'dotnet')
    OptionalCommands = @('docker', 'actionlint')
    DefaultAzureSku = 'B1'
    PaidExerciseSkus = @('S1')
    EvidenceDirectory = '.state'
}
