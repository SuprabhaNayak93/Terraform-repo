provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"

  cidr = var.cidr
}

module "ec2" {
  source = "./modules/ec2"

  ami           =  var.ami   #root variable
  instance_type =  var.instance_type
  #child variable
  subnet_id     = "subnet-0c9dfebff2a0af1dd"
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
}