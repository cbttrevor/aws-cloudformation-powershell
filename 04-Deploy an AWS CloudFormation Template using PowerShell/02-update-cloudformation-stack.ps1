$StackName = 'cloudformation-stack2'

# Update an AWS CloudFormation stack
Update-CFNStack -StackName $StackName -TemplateBody (Get-Content -Path $PSScriptRoot/template.v2.yml -Raw)

