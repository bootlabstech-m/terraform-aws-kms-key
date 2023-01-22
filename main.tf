resource "aws_kms_key" "key" {
  for_each                = { for kms in var.kms_details : kms.description => kms }
  description             = each.value.description
  key_usage               = each.value.key_usage
  multi_region            = each.value.multi_region
  deletion_window_in_days = 30
  is_enabled              = true
  enable_key_rotation     = true
}