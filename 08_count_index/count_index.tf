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

resource "aws_instance" "myec2" {
  ami           = var.amis[count.index]
  instance_type = var.instances[count.index]
  count         = 2
}