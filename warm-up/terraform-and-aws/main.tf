# base configuration to provision a aws s3 bucket 
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "tyh-app-qa-jr-ty"
}

# make bucket private

resource "aws_s3_bucket_public_access_block" "s3_block" {
    # reference to the bucket we just created 
    # aws_s3_bucket is the type resource
    # name of the resource from above we used = s3_bucket
  bucket = aws_s3_bucket.s3_bucket.id

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}