# Create list of computers with a particular operating system installed

Get-ADComputer -Filter 'enabled -eq "true"' -Properties Name,Operatingsystem,OperatingSystemVersion,IPv4Address |
Sort-Object -Property Operatingsystem |
Select-Object -Property Name,Operatingsystem,OperatingSystemVersion


# Create list of computers that have not logged onto the network within 30 days

$Days = 30
$Time = (Get-Date).Adddays(-($Days))
Get-ADComputer -Filter {LastLogonTimeStamp -lt $Time} -Properties * | Select Name, LastLogonDate
