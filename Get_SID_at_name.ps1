#Take SID username
$objUser = New-Object System.Security.Principal.NTAccount("Your_Domain","User_Name")
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$strSID.Value


