output "bucket_name" {
  value = aws_s3_bucket.log_bucket.bucket
}

output "cloudtrail_name" {
  value = aws_cloudtrail.zero_trust_trail.name
}

output "sns_topic_arn" {
  value = aws_sns_topic.alerts.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.sns_trigger_lambda.function_name
}
