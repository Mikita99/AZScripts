# Specify the name of the resource group you want to delete
$resourceGroupName = "YourResourceGroupName"

# Confirm deletion
$confirmation = Read-Host "Are you sure you want to delete the resource group '$resourceGroupName'? (Y/N)"
if ($confirmation -eq "Y" -or $confirmation -eq "y") {
    # Remove the resource group and all resources within it
    Remove-AzResourceGroup -Name $resourceGroupName -Force
    Write-Output "Resource group '$resourceGroupName' and all its resources have been deleted."
} else {
    Write-Output "Deletion aborted."
}
