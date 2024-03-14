provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./vpc"
}

module "internet_gateway" {
  source = "./gateway"
}

module "subnet" {
  source = "./subnet"
}

module "route_table" {
  source = "./route_table"
}

module "route_table_association" {
  source = "./route_table"
}

module "security_group" {
  source = "./security_group"
}

module "instance" {
  source = "./instance"
}