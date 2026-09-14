data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.7.2"

  #VPC Basic Details
  name            = var.vpc_name
  cidr            = var.vpc_cidr
  azs             = data.aws_availability_zones.available.names
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



  tags     = local.common_tags
  vpc_tags = local.common_tags

  public_subnet_tags = {
    Type                                        = "Public Subnet"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }

  private_subnet_tags = {
    Type                                        = "Private Subnet"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }

  database_subnet_tags = {
    Type = "Database Subnet"

  }
}