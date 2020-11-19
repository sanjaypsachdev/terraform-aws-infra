variable "shared_credentials_file" {
  type    = string
  default = "$HOME/.aws/credentials"
}

variable "profile" {
  type    = string
  default = "lasandbox"
}

variable "vpn_ip" {
  default = "116.50.30.20/32"
}