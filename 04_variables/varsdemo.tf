terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/ssachdev/.aws/credentials"
  profile                 = "lasandbox"
}

resource "aws_security_group" "var_demo" {
  name = "ssachdev-variables"

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port = 53
    to_port   = 53
    protocol  = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}