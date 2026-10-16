# Security integration evidence

In a public GitHub sandbox use code scanning and dependency alerts where available. Private GitHub code scanning and Azure DevOps Advanced Security require the appropriate purchased entitlement. Microsoft Defender for Cloud plans can incur charges. Record the edition, scope, and consent before enabling paid features; a missing entitlement yields **partial**, never passed.

For Azure Repos, add the following **only to the sandbox pipeline** after explicitly enabling Advanced Security for that repository:

```yaml
steps:
  - task: AdvancedSecurity-Codeql-Init@1
    inputs:
      languages: csharp
  - script: dotnet restore samples/DevOps.slnx --locked-mode
  - script: dotnet build samples/DevOps.slnx --configuration Release --no-restore
  - task: AdvancedSecurity-Dependency-Scanning@1
  - task: AdvancedSecurity-Codeql-Analyze@1
```

Compare a synthetic alert's rule, severity, branch, commit SHA, first-seen time, owner, and remediation SLA across GitHub, Azure Repos and Defender. Do not paste real secrets as a scanner test. Dismiss only an explained false positive and retain its audit reason. Re-run the exact affected revision after remediation. Export sanitized metadata and store it in ignored local evidence.

Sources: [Azure DevOps Advanced Security](https://learn.microsoft.com/en-us/azure/devops/repos/security/github-advanced-security?view=azure-devops), [Defender for DevOps](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction), [CodeQL](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning-with-codeql).
