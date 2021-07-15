
# prints current value of $verbosepreference
Write-Host "VerbosePreference is set to: $VerbosePreference"

# bypass verbose stream
$VerbosePreference = "SilentlyContinue"
Write-Host "VerbosePreference is set to: $VerbosePreference"
Write-Verbose –message "This line will not be shown"
Write-Verbose –message "This line will be shown" –Verbose

# output verbose stream
$VerbosePreference = "Continue"
Write-Host "VerbosePreference is set to: $VerbosePreference"
Write-Verbose –message "This line will be shown"
Write-Verbose –message "This line will not be shown" –Verbose:$false

# set the default value again
$VerbosePreference = "SilentlyContinue"


