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

resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.instancetype
}