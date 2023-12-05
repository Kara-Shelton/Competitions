# Download and install MySQL
$mysqlInstaller = "https://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-community-8.0.23.0.msi"
$localInstaller = "C:\mysql-installer.msi"
Invoke-WebRequest -Uri $mysqlInstaller -OutFile $localInstaller
Start-Process msiexec.exe -Wait -ArgumentList "/i $localInstaller /quiet /qn INSTALLDIR=C:\mysql ADDLOCAL=Server"

# Set PATH environment variable
$env:Path += ";C:\mysql\bin"

# Initialize MySQL (without a root password)
mysqld --initialize-insecure

# Start MySQL Service
Start-Service MySQL80

# Create a PowerShell script to configure MySQL after service starts
$configScript = @"
Start-Sleep -Seconds 10
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY ''; GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES;"
"@

# Write the script to a file
$configScriptFile = "C:\configure_mysql.ps1"
$configScript | Out-File -FilePath $configScriptFile

# Run the configuration script
Start-Process powershell.exe -ArgumentList "-File $configScriptFile" -NoNewWindow
