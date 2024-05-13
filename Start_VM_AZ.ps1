# Install Azure PowerShell module if not already installed
Install-Module -Name Az -Force -AllowClobber -Scope CurrentUser

# Connect to Azure account (Login-AzAccount will prompt for credentials)
Connect-AzAccount

# Specify the name of the resource group containing the VM
$resourceGroupName = "YourResourceGroupName"

# Specify the name of the virtual machine
$vmName = "YourVMName"

# Start the VM
Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmName

Write-Output "Virtual machine '$vmName' in resource group '$resourceGroupName' is starting."
By Mikita Simkin @2024
