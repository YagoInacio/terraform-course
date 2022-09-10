<p align="center">
  <a href="https://terraform.io">
    <img src="https://www.datocms-assets.com/2885/1620155113-brandhcterraformprimaryattributedcolor.svg" alt="Terraform's logo" width="300px" />
  </a>
</p>

Needless to say the importance of Infrastructure as Code to any DevOps professional. Hashicorp Terraform is a tool that allows the user to provision, maintain and update their infrastructure with ease, due to its declarative language. It also facilitates the quick documentation of current infrastructure state without having to keep track of all changes, providing equality between all environments (develop, staging and production). 

## This project follows Nana Janashia's Hashicorp Terraform Udemy Course
[Complete Terraform Course - Beginner to Advanced](https://www.udemy.com/course/complete-terraform-course-beginner-to-advanced/)

## The Course Includes:
- Core concepts and components of Terraform language
- Creating, changing and destroying resources with Terraform
- Automating AWS infrastructure like EC2, VPC, Subnet, Security Group, Route Table, SSH Key Pair using Terraform
- Hands-on Demo project of creating AWS infrastructure step by step
- How to use Terraform Provisioners to prepare a server for running a Docker container
- Why Terraform Remote State is important and how to configure a remote storage with AWS S3

## Versions used in the project
- Terraform - 1.2.9
- AWS provider - 4.29.0
<!-- - VPC module - 3.12.0 -->

## Usefull Terraform commands

### initialize

    terraform init

### preview terraform actions

    terraform plan

### apply configuration with variables

    terraform apply -var-file terraform-dev.tfvars

### destroy a single resource

    terraform destroy -target aws_vpc.myapp-vpc

### destroy everything from tf files

    terraform destroy

### show resources and components from current state

    terraform state list

### show current state of a specific resource/data

    terraform state show aws_vpc.myapp-vpc    

### set custom tf environment variable - before apply

    export TF_VAR_variable_name="variable-value"



## More Information: AWS Services and components we use or create with Terraform
- Amazon EC2 - Virtual Server: https://aws.amazon.com/ec2
- Amazon VPC - Your Virtual Private Network on AWS: https://aws.amazon.com/vpc
- Subnet - Subnetwork, logical subdivision of IP network: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
- Internet Gateway - a VPC component: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html
- Security Group - Virtual Firewall: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html
- Route Table - Configuring Network Traffic: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html
- Amazon S3  - Simple Storage: https://aws.amazon.com/s3/
