resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
   enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "nayak"
  }

}
resource "aws_subnet" "sub1" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name = "roji"
  }

}
resource "aws_subnet" "sub2" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name = "roop"
  }

}
resource "aws_internet_gateway" "IG" {
  vpc_id = aws_vpc.name.id
  tags = {
    Name = "IGR"
  }

}

resource "aws_route_table" "nam" {
  vpc_id = aws_vpc.name.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IG.id
  }


}
resource "aws_route_table_association" "sub1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.nam.id


}
resource "aws_route_table_association" "sub2" {
  subnet_id      = aws_subnet.sub2.id
  route_table_id = aws_route_table.nam.id


}
resource "aws_security_group" "SG" {
  vpc_id = aws_vpc.name.id
  tags = {
    Name = "SupSG"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "db_ss" {
  subnet_ids = [
    aws_subnet.sub1.id,
    aws_subnet.sub2.id
  ]
  tags = {
    Name = "rds-subnet"
  }
}
resource "aws_db_instance" "Mysqlrr" {
  allocated_storage       = 20
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  identifier              = "mydbrojinayak"
  username                = "admin"
  password                = "Cloud123" # Self-managed password
  db_subnet_group_name    = aws_db_subnet_group.db_ss.name
  vpc_security_group_ids  = [aws_security_group.SG.id]
  publicly_accessible     = true
  skip_final_snapshot     = true
  maintenance_window      = "Mon:00:00-Mon:03:00"
  backup_retention_period = 7
}


