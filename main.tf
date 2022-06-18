terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e1d30f2c40c4c701"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
/* resource "aws_eip" "my_eip" {
  vpc = true
} */

resource "aws_security_group" "SG_terraform" {
  name = "SG_terraform"

  ingress {
    description = "TLS1 from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.client_ip]
  }
  ingress {
    description = "TLS2 from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.client_ip]
  }
  ingress {
    description = "TLS3 from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.client_ip]
  }
}
