terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
  }
  backend "s3" {
    bucket = "terra-tfstate012"
    key    = "states/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terradb"
  }
}
provider "aws" {
  region = "us-east-1"
}