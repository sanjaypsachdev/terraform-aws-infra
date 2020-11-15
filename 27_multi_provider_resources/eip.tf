resource "aws_eip" "myeip1" {
  vpc = var.eip_vpc
}

resource "aws_eip" "myeip2" {
  vpc      = var.eip_vpc
  provider = aws.oregon-region
}