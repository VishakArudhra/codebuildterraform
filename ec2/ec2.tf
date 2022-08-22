
provider "aws" {
  access_key = "AKIAYQTPUXJFTF4PGMPP"
  secret_key = "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"
  region     = "ap-south-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "terraform.tf-bucket14"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
