resource "aws_instance" "my_ec2" {
  ami           = "ami-01edba92f9036f76e"   # Replace with a valid AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "Terra-EC2"
  }
}