## Learning Objectives

* CloudFormation stacks can become desynchronized with their underlying resources
* **EXAMPLE**: An operations person could come along and delete an S3 Bucket that is defined in a CloudFormation stack, directly using the S3 API or via the AWS Management Console
* [Drift detection](https://aws.amazon.com/blogs/aws/new-cloudformation-drift-detection/) is a CloudFormation feature added in late 2018, which performs a consistency check
* Drift detection can be performed on an entire CloudFormation stack, or on a specific resource in a stack
* Only [certain types of resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html) support drift detection. Must be `FULLY_MUTABLE` or `IMMUTABLE`

### References

* [AWS Docs for CloudFormation Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html)