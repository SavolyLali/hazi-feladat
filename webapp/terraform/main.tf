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

resource "aws_vpc" "main" {
  source = "./vpc.tf"
}

resource "aws_internet_gateway" "main" {
  source = "./internet_gateway.tf"
}

resource "aws_subnet" "main" {
  source = "./subnet.tf"
}

resource "aws_route_table" "public" {
  source = "./route_table.tf"
}

resource "aws_route_table_association" "public" {
  source = "./route_table.tf"
}

resource "aws_security_group" "instance_sg" {
  source = "./security_group.tf"
}

resource "aws_instance" "web" {
  source = "./ec2_instance.tf"
}