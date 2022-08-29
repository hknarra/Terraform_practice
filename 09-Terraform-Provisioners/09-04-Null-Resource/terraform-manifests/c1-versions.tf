# Terraform Block
terraform {
  required_version = "~> 1.2.0"  # which means any version equal & above 1.2.0 like 1.2.1, 1.2.2 etc and < 1.3.0
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26.0"
  }
    null = {
      source = "hashicorp/null"
      version = "~> 3.1.0"
    }
    time = {
      source = "hashicorp/time"
      version = "~> 0.8.0"
    }      
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
