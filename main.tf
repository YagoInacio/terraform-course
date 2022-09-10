variable "aws_cred" {
  description = "AWS Account Credentials"
  type = object({
    region = string
    access_key = string
    secret_key = string
  })
}

provider "aws" {  # you can use the usual ./.aws/credentials file, in that case this would be an empty object
  region = var.aws_cred.region
  access_key = var.aws_cred.access_key
  secret_key = var.aws_cred.secret_key
}

variable "cidr_blocks" {
  description = "CIDR blocks and name tags for vpc and subnets"
  # default = "10.0.10.0/24"
  type = list(object({
    cidr_block = string
    name = string
  }))
}

variable "environment" {
  description = "Deployment Environment"
}

resource "aws_vpc" "development-vpc" {
  cidr_block = var.cidr_blocks[0].cidr_block
  tags = {
    Name = var.cidr_blocks[0].name
    vpc_env = "dev"
  }
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = var.cidr_blocks[1].cidr_block
  availability_zone = "us-east-1a"
  tags = {
    Name = var.cidr_blocks[1].name
  }
}

data "aws_vpc" "existing_vpc" {
  default = true
}

resource "aws_subnet" "dev-subnet-2" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.31.96.0/20"
  availability_zone = "us-east-1b"
  tags = {
    Name = "subnet-2-default"
  }
}

output "dev-vpc-id" {
  value = aws_vpc.development-vpc.id
}

output "dev-subnet-id" {
  value = aws_subnet.dev-subnet-1.id
}
