terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
    }
}

#configure the AWS Provider
provider "aws" {
    region = "us-east-1"
}

#configure resources
resource "aws_instance" "example" {
  ami = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  
  tags = {
    Name = "terraform-example"
  }
}