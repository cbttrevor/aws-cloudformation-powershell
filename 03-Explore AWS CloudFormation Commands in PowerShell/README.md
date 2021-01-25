## Learning Objectives

* Let's explore the commands that are available for AWS CloudFormation in the AWS Tools for PowerShell
* PowerShell makes it easy to explore command metadata without actually invoking the command, unlike `aws` CLI
    * Some people may prefer a single entrypoint, but others may prefer the task-oriented approach for command names
    * One of the biggest differences between the AWS CLI and PowerShell is that PowerShell emits objects instead of simple text
* There are a couple different ways to find CloudFormation (or other service) commands in PowerShell
    * `Get-AWSCmdletName` can be used to search for PowerShell commands for a specific AWS service or API call
    * You can also use PowerShell's `Get-Command` command to explore commands by module or by name
