Get-Module -ListAvailable AWSPowerShell.NetCore

# By default, PowerShell loads modules automatically, when a command in a module is invoked
# There is a special variable that allows you to control this behavior
# https://docs.microsoft.com/en-us/dotnet/api/system.management.automation.psmoduleautoloadingpreference?view=powershellsdk-7.0.0
$PSModuleAutoLoadingPreference

# If you're not sure which command to invoke, PowerShell can help you find it

# The AWS Tools for PowerShell includes a command called Get-AWSCmdletName
# Search by API name or by [partial] service

# Search for a specific API name (duplicates can be present)
Get-AWSCmdletName -ApiOperation CreateStack

# Search for all PowerShell commands involving any service containing "cloudfor" in the service name
Get-AWSCmdletName -Service cloudfor

# Search for all PowerShell commands with -cfn in the name
Get-Command -Module AWSPowerShell.NetCore -Name *-cfn*