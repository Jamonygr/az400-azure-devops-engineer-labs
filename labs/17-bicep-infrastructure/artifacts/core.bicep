targetScope = 'resourceGroup'

@description('Run ID from the lab lifecycle context. Deploy only into that run\'s owned resource group.')
param labRunId string
@minLength(3)
@maxLength(18)
param prefix string = 'az400'
param location string = resourceGroup().location

var suffix = uniqueString(resourceGroup().id, labRunId)
var ownershipTags = union(resourceGroup().tags, {
  'az400-run': labRunId
  'az400-lab': '17'
  course: 'AZ-400'
  managedBy: 'az400-lifecycle'
})

resource storage 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  name: 'staz400${suffix}'
  location: location
  tags: ownershipTags
  kind: 'StorageV2'
  sku: { name: 'Standard_LRS' }
  properties: {
    minimumTlsVersion: 'TLS1_2'
    supportsHttpsTrafficOnly: true
    allowBlobPublicAccess: false
    allowSharedKeyAccess: false
    publicNetworkAccess: 'Disabled'
    defaultToOAuthAuthentication: true
    networkAcls: { bypass: 'None', defaultAction: 'Deny' }
    encryption: {
      keySource: 'Microsoft.Storage'
      requireInfrastructureEncryption: true
      services: {
        blob: { enabled: true, keyType: 'Account' }
        file: { enabled: true, keyType: 'Account' }
      }
    }
  }
}

resource identity 'Microsoft.ManagedIdentity/userAssignedIdentities@2024-11-30' = {
  name: '${prefix}-identity-${suffix}'
  location: location
  tags: ownershipTags
}

output storageAccountId string = storage.id
output storageAccountName string = storage.name
output identityId string = identity.id
output identityPrincipalId string = identity.properties.principalId
