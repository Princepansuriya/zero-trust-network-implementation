variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket name for storing logs"
  default     = "zero-trust-logs-bucket-kavin-190402"
}

variable "cloudtrail_name" {
  description = "CloudTrail name"
  default     = "ZeroTrustCloudTrail"
}

variable "sns_topic_name" {
  description = "SNS topic name for alerts"
  default     = "zero-trust-alerts"
}

variable "lambda_function_name" {
  description = "Lambda function name for alerts"
  default     = "ZeroTrustNotification"
}

variable "key_pair_name" {
  description = "The name of the key pair to use for EC2 SSH access"
  type        = string
}
