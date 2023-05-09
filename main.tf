terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
region  = "us-east-1"
}

resource "aws_instance" "af_server" {
  ami           = ""
  instance_type = "t2.micro"

  tags = {
    Name = "AFServer"
  }
}