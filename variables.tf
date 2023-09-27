variable "no_of_keys" {
  type = number
  description = "Number of kms key to be created"
}

variable "kms_name" {
  type        = list(string)
  description = "Kms Key Name"
}
variable "region" {
  description = "The region for the resource"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}