variable "instanceone_ami" {
  default = "ami-0947d2ba12ee1ff75"
  type    = string
}

variable "instancetwo_ami" {
  default = "ami-0dba2cb6798deb6d8"
  type    = string
}

variable "instanceone_type" {
  default = "t2.micro"
  type    = string
}

variable "instancetwo_type" {
  default = "t2.medium"
  type    = string
}

variable "iam_user" {
  default = "ec2_user"
  type    = string
}