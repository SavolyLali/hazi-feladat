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
  source = "./vpc.tf"
}

module "internet_gateway" {
  source = "./internet_gateway.tf"
}

module "subnet" {
  source = "./subnet.tf"
}

module "route_table" {
  source = "./route_table.tf"
}

module "security_group" {
  source = "./security_group.tf"
}

module "ec2_instance" {
  source = "./ec2_instance.tf"
}