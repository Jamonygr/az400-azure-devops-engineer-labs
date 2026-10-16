using './main.bicep'

param prefix = 'az400'
param sku = 'B1'
// Replace with the existing private/controlled SQL service prepared in lab 14.
param sqlServerFqdn = 'replace-with-managed-sql.database.windows.net'
param databaseName = 'Az400Todos'
param learnerIpCidr = ''
param labRunId = 'replace-with-manifest-run-id'
