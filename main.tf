resource "aws_kms_key" "key" {
  key_usage               = var.key_usage
  multi_region            = var.multi_region
  deletion_window_in_days = var.deletion_window_in_days
  is_enabled              = true
  enable_key_rotation     = true
}
resource "aws_kms_alias" "alias" {
  name          = "alias/${var.name}"
  target_key_id = aws_kms_key.key.key_id
}
