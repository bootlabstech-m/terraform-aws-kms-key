data "aws_caller_identity" "current" {}

resource "aws_kms_key" "key" {
  description              = var.description
  enable_key_rotation      = var.enable_key_rotation
  deletion_window_in_days  = var.deletion_window_in_days
  is_enabled               = var.is_enabled
  key_usage                = var.key_usage 
  customer_master_key_spec = var.customer_master_key_spec
  multi_region             = var.multi_region

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Id": "key-default-1",
  "Statement": [
    {
      "Sid": "EnableRootAccess",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
      },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_kms_alias" "key_alias" {
  name          = "alias/${var.name}"
  target_key_id = aws_kms_key.key.key_id
}
