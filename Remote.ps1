# Created script to remote restart computer

function Remote-Restart
{
$ComputerName = Read-Host "Please enter the computer name."
Restart-Computer -ComputerName $ComputerName -Wait -For PowerShell -Timeout 300 -Delay 2 
}
