# Terraform Block
terraform {
  required_version = "~> 1.2.0" # which means any version equal & above 1.2.0 like 1.2.1, 1.2.2 etc and < 1.3.0
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26.0"
    }
  }
}

# Provider block
provider "aws" {
  region  = "us-east-1"
  profile = "default" # shared credential file (authentication) 
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
