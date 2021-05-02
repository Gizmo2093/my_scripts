#Take SID username
$objUser = New-Object System.Security.Principal.NTAccount("Your_Domain","User_Name")
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$strSID.Value

#take name user
#Get-ADUser -Identity S-1-5-21-1715567821-789336058-682003330-126266 #your SID

