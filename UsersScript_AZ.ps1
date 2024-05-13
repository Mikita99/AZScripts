# Connect to Azure
Connect-AzAccount

# Set the Azure AD tenant
$tenantId = "YOUR_TENANT_ID"
Set-AzContext -TenantId $tenantId

# Create four users
for ($i = 1; $i -le 4; $i++) {
    $username = "user$i@yourdomain.com"  
    $password = "P@ssw0rd$i"            
    # Create the user
    New-AzADUser -DisplayName "User $i" -UserPrincipalName $username -Password $password -MailNickName "User$i"
    
    Write-Host "User $i created successfully."
}
