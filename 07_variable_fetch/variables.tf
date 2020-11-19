variable "amis" {
  type    = list(string)
  default = ["ami-0947d2ba12ee1ff75", "ami-0dba2cb6798deb6d8"]
}

variable "instances" {
  type = map
  default = {
    us-east-1  = "t2.micro"
    us-west-1  = "t2.nano"
    ap-south-1 = "t2.small"
  }
}

variable "region" {
  type = string
}

variable "index" {
  type = number
}