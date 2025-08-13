terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0"
    }
  }

  backend "s3" {
    bucket = "daws2025.online-remote"
    key    = "roboshop-dev-eks"
    region = "us-east-1"
    encrypt      = true  
    use_lockfile = true 
  }
  }


provider "aws" { 
  # Configuration options
  region = "us-east-1"
}