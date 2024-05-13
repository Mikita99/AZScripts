$resourceGroup = "test"
$vmName = "vm1"


Stop-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Force
By Mikita Simkin @2024
