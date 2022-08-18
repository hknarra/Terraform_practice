# Terraform Block
terraform {
  required_version = "1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26.0"
  }
  name = {
    source = "value"
   }
}
}

# Provider block

provider "aws" {

    region = "us-east-1"
    profile = "default"
  
}