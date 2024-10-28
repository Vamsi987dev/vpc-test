terraform {
    required_providers {
        aws ={
            source = "hashicorp/aws"
            version = "~>5.0"
        }
    }

    backend "s3" {
    bucket = "my-bucket-81s"
    key = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "81s-locking"
  }

}

provider "aws" {
    region = "us-east-1"
}