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
  profile                 = "lasandbox"
}

locals {
  common_tags = {
    Owner = "DevOps Team"
    Service = "backend"
  }
}

resource "aws_instance" "dev_instance" {
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  tags = local.common_tags
}

resource "aws_instance" "prod_instance" {
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.small"
  tags = local.common_tags
}