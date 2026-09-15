module "ec2_public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"
  name    = "${local.name}-bastion-instance"

  ami                    = data.aws_ami.bastion.id
  instance_type          = var.bastion_instance_type
  key_name               = var.bastion_key_name
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  #   monitoring    = true
  subnet_id = module.vpc.public_subnets[0]

  tags = local.common_tags
}