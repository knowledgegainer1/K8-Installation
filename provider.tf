terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3"{
  bucket = "kube-buckk"
  key = "creatingkuber"
  region = "us-east-1"
  dynamodb_table = "robo-dev"
}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

