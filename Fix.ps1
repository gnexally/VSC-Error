$folder = "$env:LOCALAPPDATA\Programs\Microsoft VS Code\"
$username = "$env:USERDOMAIN\$env:USERNAME"
    
$newAccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($username, "FullControl", 3, "None", "Allow")
    
$acl = Get-ACL $folder
$acl.AddAccessRule($newAccessRule)
    
Set-ACL $folder -AclObject $acl