data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_ec2_instance_type_offerings" "t3_micro" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }

  location_type = "availability-zone"
}

output "availability_zones" {
  value = data.aws_availability_zones.available.names
}

output "var_az1" {
  value = sort(data.aws_ec2_instance_type_offerings.t3_micro.locations)
}