variable "env" {
  description = "environment where the ec2 will be created"
  type        = string
}

variable "vpc_cidr" {
  description = "cidr block for VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "cidr block for subnet"
  type        = string
}

variable "subnet_az" {
  description = "availability zone for subnet"
  type        = string
}