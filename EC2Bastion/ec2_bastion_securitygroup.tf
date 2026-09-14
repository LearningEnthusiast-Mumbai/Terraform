module "public_bastion_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "~> 4.0"

  name        = "${local.name}-public-bastion-sg"
  description = "Security group with SSH port open for everyone (IPV4 CIDR) and egress ports are all world open"
  vpc_id      = module.vpc.vpc_id

  #Ingress rules and CIDR blocks for the security group
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  #Egress rules and CIDR blocks for the security group
  egress_rules = ["all-all"]
  tags = local.common_tags

}