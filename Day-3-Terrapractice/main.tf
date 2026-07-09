resource "aws_instance" "my_ec2" {
  ami           = var.ami   # Replace with a valid AMI ID
  instance_type = var.instance_type

  tags = {
    Name = var.tags
  }
}



resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-demo-bucket-12345"

  tags = {
    Name        = "Terraform-S3-Bucket"
    Environment = "Dev"
  }
}