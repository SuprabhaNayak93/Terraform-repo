resource "aws_instance" "web" {
  ami           = "ami-0b826bb6d96d2afe4"
  instance_type = "t2.micro"


  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install nginx -y
              systemctl start nginx
              systemctl enable nginx
              EOF

  tags = {
    Name = "WebServer"
  }
}