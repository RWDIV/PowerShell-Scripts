function Service-Status
{

$ServiceName = Read-Host "Please enter the service."

$ServiceInfo = Get-Service -Name $ServiceName

if ($ServiceInfo.Status -ne 'Running') 
{
 Write-Host 'Service is not started, starting service now'
            
 Start-Service -Name $ServiceName
                    
 $ServiceInfo.Refresh()
                        
 Write-Host $ServiceInfo.Status
 
 } else 
 
 {                                
 Write-Host 'The service is already running.'
 }

 }
