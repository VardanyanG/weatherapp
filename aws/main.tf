provider "aws" {
  region = "us-east-1" # Replace this with your desired AWS region
}


# Create VPC resource
resource "aws_vpc" "dev_vpc" {
  cidr_block = var.vpc_cidr # Change this to your desired CIDR block for the VPC
  tags = {
    Name = "DEV-VPC"
  }
}


resource "aws_internet_gateway" "dev_gw" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Name = "dev-gw"
  }
}


resource "aws_ecr_repository" "dev_ecr" {
  name = var.aws_ecr_repository
}

