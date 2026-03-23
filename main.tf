terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.15.136"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09ge67e4f2fghndf25dcgseg0d7"
  instance_type = "t2.micro"

  tags = {
    Owner = "Shrikant Dhanawade",
    Name  = "Test VM QA TEST12"
  }
}
