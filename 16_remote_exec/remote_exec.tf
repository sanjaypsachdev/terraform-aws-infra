terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region                  = "us-east-1"
  profile                 = "lasandbox"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  key_name      = "ss-tf"

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./ss-tf.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]
  }
}