## Learning Objectives

* Let's take a look at how to deploy an AWS CloudFormation template using PowerShell
* The `New-CFNStack` command enables deployment of a CloudFormation template, resulting in a "stack"
* You can deploy an AWS CloudFormation template in-line or from Amazon S3 storage

* `Properties` on a resource in a CloudFormation YAML template cannot be empty. Either remove `Properties` or add at least one property.
* If you don't use the `-Raw` parameter on `Get-Content`, you'll get an error
