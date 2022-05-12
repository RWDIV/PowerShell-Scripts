# Created script to remote restart computer
# Created a function called "Remote-Restart" to save time having to type out the same code over and over.
function Remote-Restart
{
# Created a variable "$CName" with user input by having the user type out the name of the computer that needs restarted.
$CName = Read-Host "Please enter the computer name."
# Restart-Computer is the cmdlet that restarts the local or remote computer
# -ComputerName is a parameter that can accept an array of computer names
# $CName is the variable that's inputted by the user from the previous line of code. 
# -Wait parameter waits indefinitely for the computer(s) to restart. 
# -For and -Delay parameters wait for particular services to become available on the restarted computers.
# -Delay: Specifies the frequency of queries, in seconds.
Restart-Computer -ComputerName $CName -Wait -For PowerShell -Delay 2 
}



function Remote-Restart
{
$CName = Read-Host "Please enter the computer name."
Restart-Computer -ComputerName $CName -Wait -For PowerShell -Delay 2 
}
