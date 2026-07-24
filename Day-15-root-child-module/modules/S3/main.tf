resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-terraform-bucket-123456mmmmmmmm"
  
  tags = {
    Name        = "My Terraform Bucket"
    Environment = "Dev"
  }
}