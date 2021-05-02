[Console]::outputEncoding = [System.Text.Encoding]::GetEncoding('cp866')
 #---Input login adn password---# 
$inputL = Read-Host "Введите логин администратора: "
$inputP = Read-Host "Введите пароль администратора: " #-AsSecureString

$password = $inputP | ConvertTo-SecureString -asPlainText -Force  #-------password admin
$username = $inputL #---------login admin
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $username, $password


$computers= "List PCs or file.txt with list";

foreach ($computer in $computers)
 {
$computer = $computer.toupper()
cmdkey /add:$computer /user:$inputL /pass:$inputP
Copy-Item -Path 'Path' -Destination \\$computer\"Path" -Recurse -Force
} 