locals {
  environment = var.environment
  owners      = var.business_unit
  name        = "$(var.environment)-$(var.business_unit)"

  common_tags = {
    environment = local.environment
    owners      = local.owners
  }
}