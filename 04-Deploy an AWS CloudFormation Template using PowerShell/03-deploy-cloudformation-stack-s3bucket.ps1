# Now let's deploy a CloudFormation stack from a template in an Amazon S3 Bucket

# Generate a random bucket name
$BucketName = (New-Guid).Guid
$StackName = 'deployfroms3-2'
$TemplateFileName = 'template.yml'

New-S3Bucket -BucketName $BucketName

Write-S3Object -BucketName $BucketName -File $PSScriptRoot/$TemplateFileName

$TemplateUrl = "https://$BucketName.s3-us-west-2.amazonaws.com/$TemplateFileName"
Write-Host -Object $TemplateUrl
New-CFNStack -StackName $StackName -TemplateURL $TemplateUrl

Remove-S3Bucket -DeleteBucketContent -BucketName $BucketName -Force

return

Remove-S3Bucket -BucketName $BucketName -DeleteBucketContent