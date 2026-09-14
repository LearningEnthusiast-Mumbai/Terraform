variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The environment for the VPC (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "business_unit" {
  description = "The business unit associated with the VPC."
  type        = string
  default     = "example-business-unit"
}
