#--------------------------------------------------------------------------------------------------------
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/set-psdebug?view=powershell-7.1
Set-PSDebug -Trace 2 #turns script debugging features on and off, sets the trace level

$VerbosePreference = "continue"
Write-Output $VerbosePreference
#--------------------------------------------------------------------------------------------------------


$winver = (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name ProductName).ProductName

if ($winver -like "Windows 10*") 
{
    Write-Host -ForegroundColor Green Windows 10
}
else
{
    # Write-Host -ForegroundColor Red Not Windows 10
    Write-Host  $winver -ForegroundColor DarkGreen -BackgroundColor White
}


