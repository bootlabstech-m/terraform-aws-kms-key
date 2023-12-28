variable "name" {
  description = "The KMS key description and name"
  type        = string
}
variable "key_usage" {
  description = "The KMS key usage"
  type        = string
 
}
variable "multi_region" {
  description = "Determines whether the KMS key is regional,multi-regional."
  type        = bool
}
variable "deletion_window_in_days" {
  description = "The KMS key description"
  type        = number
}
variable "region" {
  description = "The region for the resource"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}
