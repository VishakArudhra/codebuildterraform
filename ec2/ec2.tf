

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.34.0"
    }
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "terraform.tf-bucket11"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
