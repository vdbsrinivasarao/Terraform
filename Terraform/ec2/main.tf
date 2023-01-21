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
  region  = "ap-south-1"
  access_key = "AKIASDFMEMBBIOKFHSUQ"
  secret_key = "gNqDubs4GNhAYHgjK/4Vf/Cj3spHz2RXpguaFCXS  "
}

resource "aws_instance" "example" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name = "krishnakeypair"
  security_groups = ["launch-wizard-1"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
