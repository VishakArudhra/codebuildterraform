terraform {
 backend "s3" {
   bucket  = "codebuild-buckettf"
   key     = "eks-terraformstate.tf"
   region  = "us-east-2"
 }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "terraform.tf-codebuild-demo-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
