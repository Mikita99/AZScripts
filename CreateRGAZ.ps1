# Set variables for the resource group
$resourceGroupName = "NAME"
$location = "LOCATION" # For example, "East US"

# Check if the resource group already exists
$existingResourceGroup = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue

if ($existingResourceGroup -eq $null) {
    # Resource group does not exist, create it
    New-AzResourceGroup -Name $resourceGroupName -Location $location

    Write-Output "Resource group '$resourceGroupName' created successfully in location '$location'."
} else {
    Write-Output "Resource group '$resourceGroupName' already exists."
}
