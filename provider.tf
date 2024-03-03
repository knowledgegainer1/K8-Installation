terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"  #this is AWS provider version not terrafrom version
    }
  }
  backend "s3"{
  bucket = "tfstate-ssr-bucket"
  key = "worksation-eks"
  region = "us-east-1"
  dynamodb_table = "ssrg-locking"
}
}



provider "aws" {
   region = "us-east-1"# Configuration options
}