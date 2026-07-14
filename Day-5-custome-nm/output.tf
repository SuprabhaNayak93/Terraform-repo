# VPC ID
output "vpc_id" {
  description = "ID of the Main VPC"
  value       = aws_vpc.name.id
}

# Public Subnet ID
output "public_subnet_id" {
  description = "ID of the Public Subnet"
  value       = aws_subnet.name.id
}

# Private Subnet ID
output "private_subnet_id" {
  description = "ID of the Private Subnet"
  value       = aws_subnet.sub-2.id
}

# Internet Gateway ID
output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.dev-igw.id
}

# NAT Gateway ID
output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.dev_nat.id
}

# Elastic IP of NAT Gateway
output "nat_gateway_public_ip" {
  description = "Elastic IP attached to NAT Gateway"
  value       = aws_eip.dev_nat.public_ip
}

# Public EC2 Instance ID
output "public_ec2_instance_id" {
  description = "Instance ID of Public EC2"
  value       = aws_instance.EC2-tera.id
}

# Public EC2 Public IP
output "public_ec2_public_ip" {
  description = "Public IP of Public EC2"
  value       = aws_instance.EC2-tera.public_ip
}

# Private EC2 Instance ID
output "private_ec2_instance_id" {
  description = "Instance ID of Private EC2"
  value       = aws_instance.EC2-tera2.id
}

# IAM User Name
output "iam_user_name" {
  description = "IAM User Name"
  value       = aws_iam_user.user1.name
}

# Security Group ID
output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.dev_SG.id
}