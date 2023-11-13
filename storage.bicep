resource mysa 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: saname
  location: location
  sku: {
    name: 'Standard_LRS' 
  }
  kind:  'StorageV2'
  properties: {
     accessTier: 'Hot'
  }
}

param location string = 'WestEurope'

var saname = 'sa${uniqueString(resourceGroup().id)}'
