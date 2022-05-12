# Created a script to see if services are running and if not then it would start the service automatically
# Created function to save user time not inputting code each time
function Service-Status
{
# Created variable "$ServiceName" to receive user input for which service they want to run.
$ServiceName = Read-Host "Please enter the service."

# Created another variable to retrieve the service of what the user inputted
$ServiceInfo = Get-Service -Name $ServiceName

# if the service status is not equal to "Running", then the condition is $true and 
it executes the Write-Host scriptblock in the braces. 
# if the service is equal to Running then it will move to the else condition 
if ($ServiceInfo.Status -ne 'Running') 
{

# If the Service is not equal to "Running" then it will Write-Host that the service is starting now
 Write-Host 'Service is not started, starting service now'

# Start-Service is the cmdlet to start the service inputted by the user
 Start-Service -Name $ServiceName

# Refresh method updates the service status
 $ServiceInfo.Refresh()
 
# Write-Host with refresh                        
 Write-Host $ServiceInfo.Status
 
 } else 
 
 { 
 # if the if condition above is #false then the below Write-Host will state the service status is already running
 Write-Host 'The service is already running.'
 }

 }

##############################################################################

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
