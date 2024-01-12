terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
  #   profile = "sagar"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}