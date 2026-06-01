variable "ami_id" {
  description = "This is the ami of my ec2"
  type        = string
}

variable "instance_type" {
  description = "This is the instance type of my ec2"
  type        = string
}

variable "subnet_id" {
  description = "This is the subnet ID for my ec2"
  type        = string
}

variable "ec2_count" {
  description = "Number of ec2 instances to be created"
  type        = string
}

variable "env" {
  description = "environment where the ec2 will be created"
  type        = string
}