# Created script to remote restart computer

function Remote-Restart
{
$CName = Read-Host "Please enter the computer name."
Restart-Computer -ComputerName $CName -Wait -For PowerShell -Delay 2 
}
