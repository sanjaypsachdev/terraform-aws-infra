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

module "ec2_cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "my-cluster"
  instance_count = 1

  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  subnet_id     = "subnet-006b3963340f30a74"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}