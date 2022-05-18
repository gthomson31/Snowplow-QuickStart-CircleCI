output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "db_address_id" {
  value = module.dynamodb_table.dynamodb_table_id
}

output "db_address_arn" {
  value = module.dynamodb_table.dynamodb_table_arn
}