provider "aws" {
  access_key = "AKIA5XXOK3RRN42FDEPY"
  secret_key = "bHPOCOtQNXwyya6QfoSYLJ1OAIx9/1aKe86z6tAe"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
 
}

