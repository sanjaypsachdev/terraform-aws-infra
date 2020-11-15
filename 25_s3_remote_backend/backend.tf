terraform {
  backend "s3" {
    bucket                  = "tf-remote-backend-ss"
    key                     = "demo.tfstate"
    region                  = "us-east-1"
    dynamodb_table          = "s3-state-lock"
    shared_credentials_file = "$HOME/.aws/credentials"
    profile                 = "lasandbox"
  }
}