terraform {
  # Required Terraform Version
  required_version = "~> 1.2.0"
  # Required Providers and their Versions
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26.0" # Optional but recommended
    }
    random = {
      source = "hashicorp/random"
      version = "3.2.2"
    }
  }
  # Remote Backend for storing Terraform State in S3 bucket 
  backend "s3" {
    bucket = "mybucket"
    key    = "key/path"
    region = "us-east-1"
  }
}