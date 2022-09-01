# Terraform Block
terraform {
  required_version = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26.0"
    }
  }
  # Update Terraform Cloud Backend Block Information below
  backend "remote" {
    organization = "hk-terraform"

    workspaces {
      name = "tfm_aws_cloud_cli_driven"
    }
  }
}


# Provider Block
provider "aws" {
  region = var.aws_region

}
# Note:  AWS Credentials Profile (profile = "default") configured on local desktop terminal  
# check this is in terminal: $HOME/.aws/credentials

