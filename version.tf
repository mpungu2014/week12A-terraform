terraform {
  
  backend "s3" {
    bucket = "alexmpungu"
    key    = "Devops/dev.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraforms-lock"
    
      }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  
}