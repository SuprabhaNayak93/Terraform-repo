resource "aws_instance" "name" {
 ami = "ami-01edba92f9036f76e"
  instance_type = "t2.micro"  
  tags = {
    Name = "suprabha-ec2"
  } 
  
}
resource "aws_s3_bucket" "name" {
    bucket = "abhisupabbppkkllmmwer"
  
}
resource "aws_s3_bucket_versioning" "example_versioning" {
  bucket = aws_s3_bucket.name.id
  versioning_configuration {
    status = "Enabled"
  }
}


  

#terraform import 
# terraform import aws_instance.name i-0e32c9e0ea3a37236

