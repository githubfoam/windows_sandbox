#--------------------------------------------------------------------------------------------------------
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/set-psdebug?view=powershell-7.1
Set-PSDebug -Trace 2 #turns script debugging features on and off, sets the trace level

$VerbosePreference = "continue"
Write-Output $VerbosePreference
#--------------------------------------------------------------------------------------------------------

Write-Host "####################################################################"
Write-Host "###################### whoami ######################################"
Write-Host "####################################################################"

Write-Host "current user:"
Write-Host $(whoami)

whoami /all

Write-Host "####################################################################"
Write-Host "###################### download sysinternals########################"
Write-Host "####################################################################"


# Path for the Workdir
$workdir = "C:\tmp\"

# Check if work directory exists if not create it

If (Test-Path -Path $workdir -PathType Container)
{ Write-Host "$workdir already exists" -ForegroundColor Red}
ELSE
{ New-Item -Path $workdir  -ItemType directory }

$source = "https://download.sysinternals.com/files/SysinternalsSuite.zip"           
$destination = "$workdir\SysinternalsSuite.zip"

# Check if Invoke-Webrequest exists otherwise execute WebClient

if (Get-Command 'Invoke-Webrequest')
{
     Invoke-WebRequest $source -OutFile $destination
}
else
{
    $WebClient = New-Object System.Net.WebClient
    $webclient.DownloadFile($source, $destination)
}

# # Unzip SysinternalsSuite.zip
Expand-Archive -LiteralPath $destination -DestinationPath $workdir

# Set-Location -Path $workdir
# Set-Location -Path $workdir -PassThru
# cd $workdir
Get-ChildItem -Path $workdir -Name -Recurse
# dir /b /s /a:-D > dirlist.txt & more dirlist.txt


# Start-Process -FilePath "$workdir\firefox.exe" -ArgumentList "/S"

# # Wait few Seconds for the installation to finish

# Start-Sleep -s 45

# # Installed Firefox version

# $FFInstalled = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Mozilla\Mozilla Firefox' | Select 'CurrentVersion').CurrentVersion
# $FFInstalled | Write-Output

# # Remove the installer

# Remove-Item -Force $workdir\firefox* 

