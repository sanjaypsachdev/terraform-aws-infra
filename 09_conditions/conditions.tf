terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "lasandbox"
}

resource "aws_instance" "dev_instance" {
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  count         = var.is_test == true ? 2 : 0
}

resource "aws_instance" "prod_instance" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.medium"
  count         = var.is_test == false ? 1 : 0
}