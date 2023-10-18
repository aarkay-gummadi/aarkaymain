provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "nopcommerce_subnet_1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name = "NopCommerce Subnet 1"
  }
}

resource "aws_subnet" "nopcommerce_subnet_2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name = "NopCommerce Subnet 2"
  }
}

resource "aws_subnet" "rds_subnet_1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name = "RDS Subnet 1"
  }
}

resource "aws_subnet" "rds_subnet_2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name = "RDS Subnet 2"
  }
}