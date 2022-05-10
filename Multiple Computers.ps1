# Create list of computers with a particular operating system installed

Get-ADComputer -Filter 'enabled -eq "true"' -Properties Name,Operatingsystem,OperatingSystemVersion,IPv4Address |
Sort-Object -Property Operatingsystem |
Select-Object -Property Name,Operatingsystem,OperatingSystemVersion
