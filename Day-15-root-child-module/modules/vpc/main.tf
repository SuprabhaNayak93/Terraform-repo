resource "aws_vpc" "main" {
  cidr_block = var.cidr
  tags = {
    Name="supnA"
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}