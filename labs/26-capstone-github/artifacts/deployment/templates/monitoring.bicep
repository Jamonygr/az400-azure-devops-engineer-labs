targetScope = 'resourceGroup'
param prefix string = 'az400'
param location string = resourceGroup().location
param labRunId string
@allowed(['26', '27'])
param labId string
@description('Optional learner email. Empty creates a disabled notification route until the learner explicitly configures it.')
param notificationEmail string = ''
var suffix = uniqueString(resourceGroup().id)
var tags = union(resourceGroup().tags, { course: 'AZ-400', 'az400-lab': labId, 'az400-run': labRunId, managedBy: 'az400-lifecycle' })
resource workspace 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: '${prefix}-logs-${suffix}'
  location: location
  tags: tags
  properties: {
    sku: { name: 'PerGB2018' }
    retentionInDays: 30
    workspaceCapping: { dailyQuotaGb: 1 }
    features: { enableLogAccessUsingOnlyResourcePermissions: true }
  }
}
resource insights 'Microsoft.Insights/components@2020-02-02' = {
  name: '${prefix}-insights-${suffix}'
  location: location
  tags: tags
  kind: 'web'
  properties: {
    Application_Type: 'web'
    WorkspaceResourceId: workspace.id
    DisableLocalAuth: true
    IngestionMode: 'LogAnalytics'
  }
}
resource actionGroup 'Microsoft.Insights/actionGroups@2023-01-01' = {
  name: '${prefix}-training-alerts'
  location: 'global'
  tags: tags
  properties: {
    groupShortName: 'AZ400'
    enabled: !empty(notificationEmail)
    emailReceivers: empty(notificationEmail) ? [] : [{ name: 'Learner', emailAddress: notificationEmail, useCommonAlertSchema: true }]
  }
}
resource failedRequests 'Microsoft.Insights/metricAlerts@2018-03-01' = {
  name: '${prefix}-failed-requests'
  location: 'global'
  tags: tags
  properties: {
    description: 'Training threshold: investigate failures before increasing traffic.'
    severity: 2
    enabled: true
    scopes: [insights.id]
    evaluationFrequency: 'PT1M'
    windowSize: 'PT5M'
    autoMitigate: true
    criteria: {
      'odata.type': 'Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria'
      allOf: [{ name: 'failedRequests', metricName: 'requests/failed', metricNamespace: 'microsoft.insights/components', operator: 'GreaterThan', threshold: 5, timeAggregation: 'Count', criterionType: 'StaticThresholdCriterion' }]
    }
    actions: [{ actionGroupId: actionGroup.id }]
  }
}
output connectionString string = insights.properties.ConnectionString
output workspaceId string = workspace.id
output actionGroupId string = actionGroup.id

output workspaceCustomerId string = workspace.properties.customerId
