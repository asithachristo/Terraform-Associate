terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region  = "us-east-1"
}

resource "aws_instance" "af_server" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.nano"

  tags = {
    Name = "AFServer"
  }
}