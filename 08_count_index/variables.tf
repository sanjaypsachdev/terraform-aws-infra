variable "amis" {
  type = list(string)
  default = ["ami-0947d2ba12ee1ff75", "ami-0dba2cb6798deb6d8"]
}

variable "instances" {
  type = list(string)
  default = ["t2.micro", "t2.small"]
}