targetScope = 'resourceGroup'

@minLength(3)
@maxLength(18)
param prefix string = 'az400'
param location string = resourceGroup().location
@allowed(['B1', 'S1'])
@description('B1 is the low-cost default. S1 creates a staging slot and incurs additional cost.')
param sku string = 'B1'
@description('Existing reachable Entra-enabled Azure SQL server, for example example.database.windows.net. No password is used.')
param sqlServerFqdn string
param databaseName string = 'Az400Todos'
@description('Optional application access CIDR. Empty allows public access to nonsensitive synthetic training data.')
param learnerIpCidr string = ''
@description('Existing subnet delegated to Microsoft.Web/serverFarms. Supply it for private SQL/App Configuration connectivity.')
param integrationSubnetId string = ''
@description('Manifest ownership run ID. Must match the lab lifecycle manifest.')
param labRunId string

var suffix = uniqueString(resourceGroup().id)
var tags = union(resourceGroup().tags, { course: 'AZ-400', 'az400-lab': '17', 'az400-run': labRunId, managedBy: 'az400-lifecycle' })
var appSettings = [
  { name: 'Database__Provider', value: 'SqlServer' }
  { name: 'ConnectionStrings__Todos', value: 'Server=tcp:${sqlServerFqdn},1433;Database=${databaseName};Authentication=Active Directory Managed Identity;Encrypt=True;TrustServerCertificate=False;' }
  { name: 'AppConfiguration__Endpoint', value: configuration.properties.endpoint }
  { name: 'APPLICATIONINSIGHTS_CONNECTION_STRING', value: monitoring.outputs.connectionString }
  { name: 'Telemetry__UseEntra', value: 'true' }
  { name: 'FeatureManagement__TodoWrites', value: 'true' }
]

resource plan 'Microsoft.Web/serverfarms@2024-11-01' = {
  name: '${prefix}-plan-${suffix}'
  location: location
  tags: tags
  kind: 'linux'
  sku: { name: sku, tier: sku == 'B1' ? 'Basic' : 'Standard' }
  properties: { reserved: true }
}
resource configuration 'Microsoft.AppConfiguration/configurationStores@2024-06-01' = {
  name: '${prefix}-config-${suffix}'
  location: location
  tags: tags
  sku: { name: 'free' }
  properties: { disableLocalAuth: true, publicNetworkAccess: 'Enabled' }
}
resource vault 'Microsoft.KeyVault/vaults@2024-11-01' = {
  name: take('${prefix}-kv-${suffix}', 24)
  location: location
  tags: tags
  properties: {
    tenantId: tenant().tenantId
    sku: { family: 'A', name: 'standard' }
    enableRbacAuthorization: true
    enableSoftDelete: true
    softDeleteRetentionInDays: 7
    enablePurgeProtection: true
    publicNetworkAccess: 'Enabled'
    networkAcls: { defaultAction: 'Deny', bypass: 'AzureServices' }
  }
}
module monitoring '../../24-monitoring-alerts/artifacts/monitoring.bicep' = {
  name: 'monitoring'
  params: { prefix: prefix, location: location, labRunId: labRunId }
}
resource app 'Microsoft.Web/sites@2024-11-01' = {
  name: '${prefix}-api-${suffix}'
  location: location
  tags: tags
  kind: 'app,linux'
  identity: { type: 'SystemAssigned' }
  properties: {
    serverFarmId: plan.id
    httpsOnly: true
    virtualNetworkSubnetId: empty(integrationSubnetId) ? null : integrationSubnetId
    siteConfig: {
      vnetRouteAllEnabled: !empty(integrationSubnetId)
      linuxFxVersion: 'DOTNETCORE|10.0'
      minTlsVersion: '1.2'
      scmMinTlsVersion: '1.2'
      ftpsState: 'Disabled'
      alwaysOn: true
      healthCheckPath: '/health/ready'
      http20Enabled: true
      ipSecurityRestrictionsDefaultAction: empty(learnerIpCidr) ? 'Allow' : 'Deny'
      ipSecurityRestrictions: empty(learnerIpCidr) ? [] : [{ ipAddress: learnerIpCidr, action: 'Allow', priority: 100, name: 'Learner' }]
      appSettings: appSettings
    }
  }
}
resource appConfigReader 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  scope: configuration
  name: guid(configuration.id, app.id, 'appconfiguration-reader')
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', '516239f1-63e1-4d78-a4de-a74fb236a071')
    principalId: app.identity.principalId
    principalType: 'ServicePrincipal'
  }
}
resource vaultSecretsUser 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  scope: vault
  name: guid(vault.id, app.id, 'keyvault-secrets-user')
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', '4633458b-17de-408a-b874-0445c86b69e6')
    principalId: app.identity.principalId
    principalType: 'ServicePrincipal'
  }
}
resource metricsPublisher 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(resourceGroup().id, app.id, 'monitoring-metrics-publisher')
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', '3913510d-42f4-4e42-8a64-420c390055eb')
    principalId: app.identity.principalId
    principalType: 'ServicePrincipal'
  }
}
resource staging 'Microsoft.Web/sites/slots@2024-11-01' = if (sku == 'S1') {
  parent: app
  name: 'staging'
  location: location
  tags: tags
  identity: { type: 'SystemAssigned' }
  properties: {
    serverFarmId: plan.id
    httpsOnly: true
    virtualNetworkSubnetId: empty(integrationSubnetId) ? null : integrationSubnetId
    siteConfig: {
      vnetRouteAllEnabled: !empty(integrationSubnetId)
      linuxFxVersion: 'DOTNETCORE|10.0'
      minTlsVersion: '1.2'
      scmMinTlsVersion: '1.2'
      ftpsState: 'Disabled'
      healthCheckPath: '/health/ready'
      appSettings: appSettings
      ipSecurityRestrictionsDefaultAction: empty(learnerIpCidr) ? 'Allow' : 'Deny'
      ipSecurityRestrictions: empty(learnerIpCidr) ? [] : [{ ipAddress: learnerIpCidr, action: 'Allow', priority: 100, name: 'Learner' }]
    }
  }
}
resource stagingAppConfigReader 'Microsoft.Authorization/roleAssignments@2022-04-01' = if (sku == 'S1') {
  scope: configuration
  name: guid(configuration.id, app.id, 'staging-appconfiguration-reader')
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', '516239f1-63e1-4d78-a4de-a74fb236a071')
    principalId: staging!.identity.principalId
    principalType: 'ServicePrincipal'
  }
}
resource stagingMetricsPublisher 'Microsoft.Authorization/roleAssignments@2022-04-01' = if (sku == 'S1') {
  name: guid(resourceGroup().id, app.id, 'staging-metrics-publisher')
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', '3913510d-42f4-4e42-8a64-420c390055eb')
    principalId: staging!.identity.principalId
    principalType: 'ServicePrincipal'
  }
}
output appName string = app.name
output appPrincipalId string = app.identity.principalId
output appUrl string = 'https://${app.properties.defaultHostName}'
output appConfigurationEndpoint string = configuration.properties.endpoint
output vaultUri string = vault.properties.vaultUri
output workspaceId string = monitoring.outputs.workspaceId
output stagingPrincipalId string = sku == 'S1' ? staging!.identity.principalId : ''
