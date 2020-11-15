resource "aws_eip" "myeip" {
  vpc = var.eip_vpc
}