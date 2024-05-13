$resourceGroup = "test"
$vmName = "vm1"


Stop-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Force