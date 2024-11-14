// Define the Virtual Network
resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'myVnet'
  location: 'North Central US'
  properties: {
    addressSpace: {
      addressPrefixes: ['10.0.0.0/16']
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
    ]
  }
}

// Define the Network Interface
resource nic 'Microsoft.Network/networkInterfaces@2021-02-01' = {
  name: 'myNic'
  location: 'North Central US'
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: vnet.properties.subnets[0].id
          }
          privateIPAllocationMethod: 'Dynamic'
        }
      }
    ]
  }
}

// Define the Virtual Machine
resource vm 'Microsoft.Compute/virtualMachines@2021-03-01' = {
  name: 'myVM'
  location: 'North Central US'
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_DC2s_v2'
    }
    osProfile: {
      computerName: 'myVM'
      adminUsername: 'azureuser'
      adminPassword: 'YourPassword123!' // Use a secure password for real deployments
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer: 'WindowsServer'
        sku: '2019-Datacenter-gensecond' // Generation 2 image
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
        managedDisk: {
          storageAccountType: 'Standard_LRS'
        }
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: nic.id
        }
      ]
    }
  }
}
