resource "aws_instance" "name" {
    ami = "ami-02b64aa047cb5edf5"
    instance_type = "t2.medium"
    tags = {
      Name="Server-J"
    }
  
}