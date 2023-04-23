# aws

## Configuration

| Command | Description |
| --- | --- |
| `aws configure` | Configure AWS CLI with your access key, secret key, region, and output format |

## EC2

| Command | Description |
| --- | --- |
| `aws ec2 describe-instances` | List all EC2 instances in the configured region |
| `aws ec2 run-instances --image-id <ami-id> --instance-type <instance-type> --key-name <key-name> --security-group-ids <security-group-id> --subnet-id <subnet-id> --count <count>` | Launch new EC2 instances |
| `aws ec2 terminate-instances --instance-ids <instance-id>` | Terminate an EC2 instance |

## S3

| Command | Description |
| --- | --- |
| `aws s3 ls` | List all S3 buckets |
| `aws s3 cp <source> s3://<bucket-name>/<destination>` | Upload a file or directory to an S3 bucket |
| `aws s3 cp s3://<bucket-name>/<source> <destination>` | Download a file or directory from an S3 bucket |
| `aws s3 rm s3://<bucket-name>/<object>` | Delete an object from an S3 bucket |

## Lambda

| Command | Description |
| --- | --- |
| `aws lambda list-functions` | List all Lambda functions |
| `aws lambda create-function --function-name <function-name> --runtime <runtime> --role <role-arn> --handler <handler> --zip-file fileb://<filename>.zip` | Create a new Lambda function |
| `aws lambda update-function-code --function-name <function-name> --zip-file fileb://<filename>.zip` | Update the code of an existing Lambda function |
| `aws lambda delete-function --function-name <function-name>` | Delete a Lambda function |

## IAM 

| Command | Description |
| --- | --- |
| `aws iam list-users` | List all IAM users |
| `aws iam create-user --user-name <user-name>` | Create a new IAM user |
| `aws iam delete-user --user-name <user-name>` | Delete an IAM user |
| `aws iam list-roles` | List all IAM roles |
| `aws iam create-role --role-name <role-name> --assume-role-policy-document file://<policy-file>` | Create a new IAM role |

## General 

| Command | Description |
| --- | --- |
| `aws help` | Display help information about AWS CLI |
| `aws <service> help` | Display help information about a specific service |
