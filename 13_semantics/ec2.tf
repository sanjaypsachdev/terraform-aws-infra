resource "aws_instance" "myec2" {
  ami           = var.instanceone_ami
  instance_type = var.instanceone_type
}

resource "aws_instance" "newec2" {
  ami           = var.instancetwo_ami
  instance_type = var.instancetwo_type
}