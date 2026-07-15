variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "subnet2_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "az1" {
  type    = string
  default = "us-west-2a"
}

variable "az2" {
  type    = string
  default = "us-west-2b"
}

variable "vpc_name" {
  type    = string
  default = "nayak"
}

variable "subnet1_name" {
  type    = string
  default = "roji"
}

variable "subnet2_name" {
  type    = string
  default = "roop"
}

variable "igw_name" {
  type    = string
  default = "IGR"
}

variable "sg_name" {
  type    = string
  default = "SupSG"
}

variable "db_identifier" {
  type    = string
  default = "mydbrojinayak"
}

variable "db_username" {
  type    = string
  default = "admin"
}

variable "db_password" {
  type      = string
  default   = "Cloud123"
  sensitive = true
}

variable "allocated_storage" {
  type    = number
  default = 20
}

variable "engine" {
  type    = string
  default = "mysql"
}

variable "instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "backup_retention_period" {
  type    = number
  default = 7
}

variable "maintenance_window" {
  type    = string
  default = "Mon:00:00-Mon:03:00"
}