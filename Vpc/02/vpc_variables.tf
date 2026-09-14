variable "vpc_name" {
  description = "Name of the VPC."
  type        = string
  default     = "vpc-dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones for the VPC subnets."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "private_subnets" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "database_subnets" {
  description = "CIDR blocks for database subnets."
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

variable "enable_nat_gateway" {
  description = "Whether to create NAT gateways."
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Whether to use a single NAT gateway."
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Whether to enable DNS hostnames in the VPC."
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Whether to enable DNS support in the VPC."
  type        = bool
  default     = true
}

variable "public_subnet_tags" {
  description = "Tags for public subnets."
  type        = map(string)
  default = {
    Type = "vpc-dev-public"
  }
}

variable "private_subnet_tags" {
  description = "Tags for private subnets."
  type        = map(string)
  default = {
    Type = "vpc-dev-private"
  }
}

variable "database_subnet_tags" {
  description = "Tags for database subnets."
  type        = map(string)
  default = {
    Type = "vpc-dev-database"
  }
}

variable "tags" {
  description = "Tags applied to VPC resources."
  type        = map(string)
  default = {
    Name  = "vpc-dev"
    owner = "Vikas"
  }
}

variable "vpc_tags" {
  description = "Tags applied to the VPC."
  type        = map(string)
  default = {
    Name  = "vpc-dev"
    owner = "Vikas"
  }
}