resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "main-vpc"
  }
}


resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1"
  }
}


resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "subnet2"
  }
}


resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "subnet3"
  }
}


resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "private-route-table"
  }
}


locals {
  subnet_ids = {
    subnet1 = aws_subnet.subnet1.id
    subnet2 = aws_subnet.subnet2.id
    subnet3 = aws_subnet.subnet3.id
  }
}


resource "aws_route_table_association" "private" {
  for_each = local.subnet_ids

  subnet_id      = each.value
  route_table_id = aws_route_table.private.id
}