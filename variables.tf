variable "aws_access_key" {
  description = "VAR AWS access_key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "VAR AWS secret_key"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Bucket seguro"
  type        = string
  default     = "lab10-bucket-secure-01"
}

variable "acl" {
  description = "Canned ACL for the S3 bucket"
  type        = string
  default     = "private"
}

variable "force_destroy" {
  description = "If true, empty and delete bucket when destroying"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable S3 bucket versioning"
  type        = bool
  default     = false
}

variable "block_public" {
  description = "Block public access to the bucket via the public access block resource"
  type        = bool
  default     = true
}

variable "sse_algorithm" {
  description = "Server-side encryption algorithm to use by default"
  type        = string
  default     = "AES256"
}

variable "tags" {
  description = "Additional tags to apply to the bucket"
  type        = map(string)
  default     = {}
}
