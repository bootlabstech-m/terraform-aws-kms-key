variable "name" {
  description = "The KMS key name/alias"
  type        = string
}
variable "key_usage" {
  description = "The KMS key usage"
  type        = string
  default = "ENCRYPT_DECRYPT"
}
variable "multi_region" {
  description = "Determines whether the KMS key is regional,multi-regional."
  type        = bool
  default = false
}
variable "description" {
  type = string
  description = "kms key description"
  default = "Terraform-managed KMS key with proper policy" 
}
variable "enable_key_rotation" {
  type = bool
  description = "Enable key rotation"
  default = true 
}
variable "is_enabled" {
  type = bool
  description = "To control whether the kms key is enabled or disabled immediately after created"
  default = true
}
variable "customer_master_key_spec" {
  type = string
  description = "Enter the customer master key spec"
  default = "SYMMETRIC_DEFAULT"
}  

variable "deletion_window_in_days" {
  description = "The KMS key description"
  type        = number
  default = 20
}
variable "region" {
  description = "The region for the resource"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}