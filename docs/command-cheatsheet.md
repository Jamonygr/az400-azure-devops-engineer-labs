# Command cheatsheet

Use explicit context. These queries inspect state; mutation commands belong to
the individual lab after ownership and cost checks.

```powershell
git status --short
git log --oneline --decorate -10
gh auth status
gh api user --jq .login
gh repo view $GhRepo --json nameWithOwner,isPrivate,id
gh run list --repo $GhRepo --limit 10
az account show --subscription $SubscriptionId --query '{Id:id,Tenant:tenantId}'
az group show --name $ResourceGroup --subscription $SubscriptionId
az devops project show --project $AdoProject --organization $AdoOrganization
az pipelines list --project $AdoProject --organization $AdoOrganization --output table
dotnet --list-sdks
dotnet test samples/DevOps.slnx --configuration Release
python tools/check_all.py
```

`az rest` must target the intended endpoint and resource audience. Azure DevOps
REST uses its own Entra resource audience; an ARM token is not interchangeable.
GitHub CLI `gh api --method GET` avoids accidental method inference when adding
fields. Keep tokens in approved credential stores and never save them in evidence.
