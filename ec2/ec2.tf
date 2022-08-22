terraform {

 backend "s3" {
   bucket  = "codebuild-buckettf"
   key     = "eks-terraformstate.tf"
   region  = "ap-south-1"
 }
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
