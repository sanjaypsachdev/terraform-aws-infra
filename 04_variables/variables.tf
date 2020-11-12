variable "shared_credentials_file" {
  type = string
  default = "/home/ssachdev/.aws/credentials"
}

variable "profile" {
  type = string
  default = "lasandbox"
}

variable "vpn_ip" {
  default = "116.50.30.20/32"
}