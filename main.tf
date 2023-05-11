terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
    profile = "default"
    region  = "us-east-1"
}

resource "aws_instance" "af_server" {
  #ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "AFServer"
  }
}