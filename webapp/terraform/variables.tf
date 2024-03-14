variable "aws_region" {
  default = "eu-west-3"
}

variable "instance_ami" {
  default = "ami-0546127e0cf2c6498"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_cidr_block" {
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  default = "eu-west-3a"
}
