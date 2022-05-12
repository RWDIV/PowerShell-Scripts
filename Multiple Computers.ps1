# Create list of computers with a particular operating system installed

# Get-ADComputer is the cmdlet retrieves computer(s)
# -Filter * is the parameter that retrieves all computers
# -Properties retrieves the three properties listed below only 
Get-ADComputer -Filter * -Properties Name,Operatingsystem,OperatingSystemVersion |

# Sort-Object is the cmdlet that will sort Operatingsystem property by ascending order
Sort-Object -Property Operatingsystem |

# Select-Object is the cmdlet that outputs the three properties listed below
Select-Object -Property Name,Operatingsystem,OperatingSystemVersion



Get-ADComputer -Filter * -Properties Name,Operatingsystem,OperatingSystemVersion |
Sort-Object -Property Operatingsystem |
Select-Object -Property Name,Operatingsystem,OperatingSystemVersion


############################################




# Create list of computers that have not logged onto the network within 30 days

$Days = 30
$Time = (Get-Date).Adddays(-(-$Days))
Get-ADComputer -Filter {LastLogonTimeStamp -gt $Time} -Properties * | Select Name, LastLogonDate

