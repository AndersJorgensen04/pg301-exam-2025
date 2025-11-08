output "bucket_name" {
  description = "Name of the s3 sentimentanalyse bucket"
  value       = aws_s3_bucket.sentimentanalyse.bucket
}
output "bucket_arn" {
  description = "sentimentanalyse buckey ARN"
  value       = aws_s3_bucket.sentimentanalyse.arn
}
output "region" {
  description = "Region where the bucket is located"
  value       = var.region
}