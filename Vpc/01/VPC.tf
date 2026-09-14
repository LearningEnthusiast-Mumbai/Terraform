module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.7.2"

  #VPC Basic Details
  name            = var.vpc_name
  cidr            = var.vpc_cidr
  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  #Database Subnets  
  database_subnets = var.database_subnets

  #NAT Gateways for communication
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  #VPC DNS Parameters
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  public_subnet_tags   = var.public_subnet_tags
  private_subnet_tags  = var.private_subnet_tags
  database_subnet_tags = var.database_subnet_tags
  tags                 = var.tags
  vpc_tags             = var.vpc_tags

}