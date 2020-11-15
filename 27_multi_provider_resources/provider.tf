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

provider "aws" {
  alias                  = "oregon-region"
  region                  = "us-west-2"
  profile                 = "lasandbox"
}