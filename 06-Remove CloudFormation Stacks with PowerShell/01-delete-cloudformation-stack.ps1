# You can pipe the output from Get-CFNStack directly into Remove-CFNStack
# Although you'll be prompted for confirmation, this will destroy all CloudFormation stacks in the current AWS region
Get-CFNStack | Remove-CFNStack

# Use the -Force parameter to skip confirmation
# IMPORTANT: This is highly destructive!
Get-CFNStack | Remove-CFNStack -Force

Get-CFNStack | ? StackName -match '^deploy' | Remove-CFNstack -Force

# Use a graphical interface to filter the stacks that should be deleted
# https://devblogs.microsoft.com/powershell/introducing-consoleguitools-preview/
Get-CFNStack | Out-ConsoleGridView -OutputMode Multiple -Title 'Delete CloudFormation Stacks' | Remove-CFNStack
