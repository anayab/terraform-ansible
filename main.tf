terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "anurag-b21-default-bucket-1988"

  tags = {
    Name = "Terraform-bucket"
    Environment = "Dev"

  }
}
