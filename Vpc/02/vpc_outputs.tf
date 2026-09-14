output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC."
  value       = module.vpc.vpc_cidr_block
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway."
  value       = module.vpc.igw_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets."
  value       = module.vpc.public_subnets
}

output "public_subnet_cidr_blocks" {
  description = "The CIDR blocks of the public subnets."
  value       = module.vpc.public_subnets_cidr_blocks
}

output "public_route_table_ids" {
  description = "The IDs of the public route tables."
  value       = module.vpc.public_route_table_ids
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets."
  value       = module.vpc.private_subnets
}

output "private_subnet_cidr_blocks" {
  description = "The CIDR blocks of the private subnets."
  value       = module.vpc.private_subnets_cidr_blocks
}

output "private_route_table_ids" {
  description = "The IDs of the private route tables."
  value       = module.vpc.private_route_table_ids
}

output "database_subnet_ids" {
  description = "The IDs of the database subnets."
  value       = module.vpc.database_subnets
}

output "database_subnet_cidr_blocks" {
  description = "The CIDR blocks of the database subnets."
  value       = module.vpc.database_subnets_cidr_blocks
}

output "database_route_table_ids" {
  description = "The IDs of the database route tables."
  value       = module.vpc.database_route_table_ids
}

output "nat_gateway_ids" {
  description = "The IDs of the NAT gateways."
  value       = module.vpc.natgw_ids
}

output "nat_gateway_public_ips" {
  description = "The public IP addresses of the NAT gateways."
  value       = module.vpc.nat_public_ips
}
