provider "aws" {  # you can use the usual ./.aws/credentials file, in that case this would be an empty object
  region = var.aws_cred.region
  access_key = var.aws_cred.access_key
  secret_key = var.aws_cred.secret_key
}

resource "aws_vpc" "myapp-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.env_prefix}-vpc"
  }
}

resource "aws_subnet" "myapp-subnet-1" {
  vpc_id = aws_vpc.myapp-vpc.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.avail_zone
  tags = {
    Name = "${var.env_prefix}-subnet-1"
  }
}