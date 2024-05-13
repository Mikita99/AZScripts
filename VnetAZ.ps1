# Set variables for the resource group, location, and VNet name
$resourceGroupName = "RG"
$location = "LOCATION" # For example, "East US"
$vnetName = "NAME"
$subnetName = "Subnet0"
$subnetPrefix = "10.0.0.0/24"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new VNet
$vnet = New-AzVirtualNetwork -ResourceGroupName $resourceGroupName -Location $location -Name $vnetName -AddressPrefix "10.0.0.0/16"

# Create a subnet within the VNet
$subnet = Add-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetPrefix -VirtualNetwork $vnet

# Set the subnet configuration
$vnet | Set-AzVirtualNetwork

# Output the VNet details
$vnet

# Output the subnet details
$subnet
By Mikita Simkin @2024
