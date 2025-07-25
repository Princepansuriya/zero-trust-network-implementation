# Project Workflow
1. Network Infrastructure Setup (Terraform)
  Created a VPC, Public & Private Subnets, Route Tables, Internet Gateway, and NAT Gateway using Terraform.

  Laid the foundation for hosting compute resources securely.

2. IAM Setup
  Created an unauthorized IAM user with limited permissions (ec2:Describe*).

  This user was used to test unauthorized attempts like s3:ListBuckets, ec2:TerminateInstances, etc.

3. CloudTrail Logging
  Enabled AWS CloudTrail to log all API activity.

  Logs were stored in an S3 bucket for analysis.

4. Lambda Function (Threat Handler)
  A Lambda function was created to:

  Read CloudTrail logs from S3.

  Filter for AccessDenied, UnauthorizedOperation events.

  Format an alert message and send it via SNS email.

5. SNS Notification Setup
  Created an SNS Topic.

  Subscribed your email to receive alerts.

  Lambda publishes alerts to this SNS topic.

6. EventBridge for Manual Query Detection
  Created EventBridge rules to trigger the Lambda when a CloudTrail event logs unauthorized access attempts.

7. GuardDuty Threat Detection
  Enabled GuardDuty to detect real-time malicious behavior.

  Created sample findings to simulate real threats.

  Used EventBridge + Lambda to catch GuardDuty alerts and forward via email.

# AWS Services Used

Service	Purpose
VPC/Subnets	Network infrastructure

IAM	User access control (least privilege)

CloudTrail	API activity logging

Lambda	Log processing & alerting

SNS	Email notifications

EventBridge	Triggering Lambda based on CloudTrail & GuardDuty

GuardDuty	Threat detection

S3	CloudTrail log storage

Terraform	Infrastructure as Code (IaC)
