provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

module "vpc" {
  source = "./modules/vpc.tf"
}

module "internet_gateway" {
  source = "./modules/internet_gateway.tf"
}

module "subnet" {
  source = "./modules/subnet.tf"
}

module "route_table" {
  source = "./modules/route_table.tf"
}

module "security_group" {
  source = "./modules/security_group.tf"
}

module "ec2_instance" {
  source = "./modules/ec2_instance.tf"
}