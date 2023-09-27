resource "aws_kms_key" "key" {
  # for_each                = { for kms in var.kms_details : kms.kms_name => kms }
  count                   = var.no_of_keys
  description             = var.kms_name[count.index]
  key_usage               = "ENCRYPT_DECRYPT"
  deletion_window_in_days = 30
  is_enabled              = true
  enable_key_rotation     = true
}                         
                               
resource "aws_kms_alias" "alias_name" {
  # for_each = aws_kms_key.key
  count                   = var.no_of_keys
  name                    = "alias/${var.kms_name[count.index]}"
  target_key_id           = aws_kms_key.key[count.index].key_id
}
