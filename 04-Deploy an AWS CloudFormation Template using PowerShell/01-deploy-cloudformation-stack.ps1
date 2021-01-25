# Define a variable for the CloudFormation stack name
$StackName = 'cloudformation-stack2'

# Deploy the CloudFormation stack, from a template file in the same directory as the script
# NOTE: This is an asynchronous operation
New-CFNStack -TemplateBody (Get-Content -Path $PSScriptRoot/template.yml -Raw) -StackName $StackName


# Get list of resources from CloudFormation stack
Get-CFNStackResourceList -StackName $StackName

