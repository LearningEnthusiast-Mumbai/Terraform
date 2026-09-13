resource "aws_instance" "example" {
  for_each = toset(data.aws_ec2_instance_type_offerings.t3_micro.locations)

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"
  availability_zone = each.value

  tags = {
    Name = "t3-micro-${each.value}"
  }
}