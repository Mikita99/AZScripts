# Specify the resource group name
$resourceGroup = "test"

# Get all resources in the specified resource group
$resources = Get-AzResource -ResourceGroupName $resourceGroup

# Loop through each resource and delete it
foreach ($resource in $resources) {
    Remove-AzResource -ResourceId $resource.ResourceId -Force -Confirm:$false
}

# Remove the resource group
Remove-AzResourceGroup -Name $resourceGroup -Force -Confirm:$false
By Mikita Simkin @2024
