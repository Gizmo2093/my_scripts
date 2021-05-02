$password = "" | ConvertTo-SecureString -asPlainText -Force  #-------password admin
$username = "" #---------login admin
$credential = New-Object System.Management.Automation.PSCredential($username,$password)

for ($t=1;$t -lt 14;$t++)
{
if (Test-Connection 192.168.1.$t -Count 1 -ErrorAction SilentlyContinue)
    {
    $comps = Get-WmiObject -computername 192.168.1.$t Win32_OperatingSystem  -Credential $credential | select Caption,csname
    $users = (Get-WmiObject -computername 192.168.1.$t Win32_ComputerSystem -Credential $credential).username
    write-host $comps $users
    }
}