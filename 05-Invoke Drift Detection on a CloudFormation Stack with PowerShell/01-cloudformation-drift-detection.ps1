$StackName = 'deployfroms3-2'

# Let's find all commands with "drift" in the name
Get-Command -Module AWSPowerShell.NetCore -Name *drift*

# List CloudFormation stacks
Get-CFNStack


$DriftId = Start-CFNStackDriftDetection -StackName $StackName
# Possible exception returned from the above command: "Drift detection is already in progress for stack"

Get-CFNStackDriftDetectionStatus -StackDriftDetectionId $DriftId

Get-CFNDetectedStackResourceDrift -StackName $StackName


Get-CFNStackResourceList -StackName $StackName
Get-CFNStackResourceDrift -StackName $StackName -LogicalResourceId MyS3Bucket