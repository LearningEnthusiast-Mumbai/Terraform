output "ec2_public_ip" {
    value = module.ec2_public_instance.public_ip
}

output "ec2_public_dns" {
    value = module.ec2_public_instance.public_dns
}

output "ec2_private_ip" {
    value = module.ec2_public_instance.private_ip
}

output "ec2_instance_id" {
    value = module.ec2_public_instance.id
}

output "ec2_bastion_eip" {
    value = aws_eip.bastion_eip.public_ip
}