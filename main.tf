resource "aws_kms_key" "key" {
  description             = var.name
  key_usage               = var.key_usage
  multi_region            = var.multi_region
  deletion_window_in_days = var.deletion_window_in_days
  is_enabled              = true
  enable_key_rotation     = true
}