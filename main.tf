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

# Define instance type as a variable
variable "instance_type" {
    type = string
  
}

resource "aws_instance" "af_server" {
    ami           = "ami-0889a44b331db0194"
    instance_type = var.instance_type

    tags = {
        Name = "AFServer"
  }
}