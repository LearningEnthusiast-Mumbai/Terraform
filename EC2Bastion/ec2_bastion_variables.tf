variable "bastion_instance_type" {
    description = "The instance type for the bastion host."
    type        = string
    default     = "t3.micro"
}

variable "bastion_ami" {
    description = "The AMI ID for the bastion host."
    type        = string
    default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
}

variable "bastion_key_name" {
    description = "The name of the SSH key pair for the bastion host."
    type        = string
    default     = "my-key-pair"
  
}