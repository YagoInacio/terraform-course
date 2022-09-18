variable "aws_cred" {
  description = "AWS Account Credentials"
  type = object({
    region = string
    access_key = string
    secret_key = string
  })
}

variable "my_ip" {}

variable "env_prefix" {}

variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "avail_zone" {}

variable "instance_type" {}
variable "public_key_location" {}
