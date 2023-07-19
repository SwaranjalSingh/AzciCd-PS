# Connect to your Azure account
# Connect-AzAccount
 az login --username Swara@vikash252outlook.onmicrosoft.com --password Ss123456789@!
# Get all VMs in the subscription
$vmList = az vm list  
# $VMStatuses = (Get-AzVM -ResourceGroupName $RGName -Name $VMName -Status). Statuses
# Iterate through each VM
foreach ($vm in $vmList) {
    # Get VM details
    $vmRG = $vm.ResourceGroupName
    $vmName = $vm.Name
    $vmStatus = $vm.PowerState
    $vmOStype = $vm.storageProfile.osDisk.osType
    
    # Display VM details
    Write-Host "VM RG: $vmRG"
    Write-Host "VM Name: $vmName"
    Write-Host "Status: $vmStatus"
    Write-Host "OStype: $vmOStype"
    Write-Host "------------------------------"
}
# disConnect to your Azure account
# disconnect-azaccount

az logout

