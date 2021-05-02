$password = "" | ConvertTo-SecureString -asPlainText -Force  #-------password admin-user
$username = "" #---------Login admin-user
$credential = New-Object System.Management.Automation.PSCredential($username,$password)

$comps = Get-Content -Path 'coll.txt'
ForEach ($comp in $comps){

$TrueName = (Get-WmiObject -computername $comp Win32_OperatingSystem  -Credential $credential -Property csname).csname

$OS = Get-WmiObject -class Win32_OperatingSystem -Credential $credential -ComputerName $comp | select Caption,Version,OSArchitecture

$User= (Get-WMIObject -Class Win32_ComputerSystem -Credential $credential -ComputerName $comp).username #|Select-Object Username
Write-Host $IP, $trueName, $OS, $User
}