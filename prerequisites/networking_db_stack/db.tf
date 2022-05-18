module "dynamodb_table" {
  source   = "terraform-aws-modules/dynamodb-table/aws"

  name     = "dynamodb-terraform-state-lock"
  hash_key = "LockID"

  attributes = [
    {
      name = "LockID"
      type = "N"
    }
  ]

  tags = {
    Terraform = "true"
    Environment = "${var.prefix}-sandbox"
  }
}