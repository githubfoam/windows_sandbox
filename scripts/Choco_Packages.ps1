# Silent Install Firefox 
## Download URL: https://www.mozilla.org/en-US/firefox/all/
### When a new version of FireFox comes out, just change the firefox version or url to the new value

#--------------------------------------------------------------------------------------------------------
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/set-psdebug?view=powershell-7.1
Set-PSDebug -Trace 2 #turns script debugging features on and off, sets the trace level

$VerbosePreference = "continue"
Write-Output $VerbosePreference
#--------------------------------------------------------------------------------------------------------

# https://docs.chocolatey.org/en-us/choco/commands/install
choco install --yes --no-progress --virus-check sysinternals osquery ChocolateyGUI packer

choco install --yes --no-progress --virus-check googlechrome microsoft-edge 7zip

choco install --yes --no-progress --virus-check ant bazel cmake git gradle maven sbt tortoisesvn

choco install --yes --no-progress --virus-check apache-httpd nginx php postgresql jq julia 

choco install --yes --no-progress --virus-check kubernetes-cli kubernetes-helm Minikube docker-compose 

choco list --local-only