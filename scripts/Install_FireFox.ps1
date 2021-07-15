# Silent Install Firefox 
## Download URL: https://www.mozilla.org/en-US/firefox/all/
### When a new version of FireFox comes out, just change the firefox version or url to the new value

#--------------------------------------------------------------------------------------------------------

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/set-psdebug?view=powershell-7.1
# Set-PSDebug -Trace 2 #turns script debugging features on and off, sets the trace level

Write-Output $VerbosePreference

$VerbosePreference = "continue"
Write-Verbose "verbose output"

# Path for the Workdir
$workdir = "C:\tmp\"

# Check if work directory exists if not create it

If (Test-Path -Path $workdir -PathType Container)
{ Write-Host "$workdir already exists" -ForegroundColor Red}
ELSE
{ New-Item -Path $workdir  -ItemType directory }

# Download the installer

          
# $source = "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US"           
$source = "https://download.mozilla.org/?product=firefox-51.0.1-SSL&os=win64&lang=en-US"
$destination = "$workdir\firefox.exe"


