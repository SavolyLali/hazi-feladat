include "provider" {
  path = find_in_parent_folders("provider.hcl")
}

// Original url: git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git//.?ref=v4.16.1
terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket/?ref=v4.1.1"
}

locals {
  env_vars = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  env_name = local.env_vars.locals.environment
}

inputs = {
  bucket = "${local.env_name}-bucket" //Change var to local
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true  // Enable versioning with boolean value
  }
}