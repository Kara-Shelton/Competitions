# Install FTP Server
Install-WindowsFeature -Name Web-Ftp-Server -IncludeManagementTools

# Set up FTP Site
Import-Module WebAdministration
$siteName = "MisconfiguredFTPSite"
$sitePath = "C:\inetpub\ftproot"
New-Item -Path $sitePath -Type Directory
New-WebFtpSite -Name $siteName -Port 21 -PhysicalPath $sitePath

# Allow anonymous access
Set-WebConfigurationProperty -pspath "IIS:\Sites\$siteName" -filter "system.ftpServer/security/authentication/anonymousAuthentication" -name "enabled" -value "True"

# Set permissions for anonymous upload
$acl = Get-Acl $sitePath
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Everyone", "Write", "ContainerInherit,ObjectInherit", "None", "Allow")
$acl.SetAccessRule($rule)
Set-Acl -Path $sitePath -AclObject $acl

# Restart FTP service to apply changes
Restart-Service -Name "Microsoft FTP Service" -Force

# Disable Windows Firewall for demonstration purposes (NOT recommended in production)
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
