# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0aa7d40eeae50c9a9" # Amazon Linux 2 Kernel 5.10 AMI 2.0.20221210.1 x86_64 HVM gp2 - US-East-1
  instance_type = "t2.micro"
}