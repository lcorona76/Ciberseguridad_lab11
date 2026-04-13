output "bucket_id" {
  description = "The S3 bucket name (ID)"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  description = "The bucket domain name (e.g. bucket.s3.amazonaws.com)"
  value       = aws_s3_bucket.this.bucket_domain_name
}
