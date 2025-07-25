Zero Trust Network Implementation in AWS Using Terraform
🚀 Cloud Security Project | Real-Time Threat Detection | Infrastructure as Code (IaC)
Enforcing “Never Trust, Always Verify” in Cloud Data Centers

Project Overview
In today’s evolving cyber threat landscape, traditional perimeter-based security models are no longer sufficient. This project implements a Zero Trust Security Architecture in a cloud-based data center using AWS and Terraform, focused on the principle: “Never Trust, Always Verify.”

The goal is to create a secure, scalable, and auditable network infrastructure that enforces least privilege access, ensures real-time monitoring, and provides automated threat detection and response.

Key Features| Feature                   | Description                                                                 |
| ------------------------- | --------------------------------------------------------------------------- |
| 🛡️ Zero Trust Security   | All access is verified continuously; no implicit trust within the network   |
| ⚙️ Terraform IaC          | Provisioned VPC, subnets, route tables, gateways, IAM, and monitoring tools |
| 👤 IAM User Restriction   | Simulated unauthorized behavior with limited IAM user                       |
| 📜 CloudTrail Logging     | Full API activity logging with centralized S3 storage for analysis          |
| ⚡ Lambda Threat Handler   | Automated log processor to detect AccessDenied or Unauthorized operations   |
| 📧 SNS Email Alerts       | Real-time notifications sent for suspicious activity                        |
| 🕵️ GuardDuty Detection   | Identifies reconnaissance, compromised credentials, and instance abuse      |
| 🔄 EventBridge Automation | Automatically triggers Lambda based on GuardDuty or CloudTrail findings     |

Tools & Technologies
| Category       | Technologies Used                                       |
| -------------- | ------------------------------------------------------- |
| **Cloud**      | AWS (VPC, IAM, CloudTrail, Lambda, SNS, GuardDuty, S3)  |
| **IaC**        | Terraform (infrastructure provisioning & configuration) |
| **Monitoring** | AWS CloudTrail, GuardDuty, EventBridge                  |
| **Automation** | AWS Lambda, SNS, EventBridge Rules                      |
| **Security**   | Zero Trust Architecture, Least Privilege Access         |

Process Flow 
<img width="923" height="616" alt="image" src="https://github.com/user-attachments/assets/af3dc2a6-a323-4b29-bc26-4080b1de50d8" />

Project Outcomes
✅ Implemented Zero Trust Model using only cloud-native tools
✅ Built a fully auditable, secure infrastructure with Terraform (IaC)
✅ Demonstrated real-time threat detection and response automation
✅ Applied least privilege principles with fine-grained IAM policies
✅ Showcased skills in cloud security, DevOps, and automation scripting




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


