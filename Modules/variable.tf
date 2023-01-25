variable "ami" {
  default = "ami-0cca134ec43cf708f"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "sub-01" {
  default = "10.0.1.0/24"
}
