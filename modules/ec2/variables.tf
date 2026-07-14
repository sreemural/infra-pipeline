variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID in which to launch the instance"
  type        = string  
}

variable "ec2_count" {
  description = "The number of instances to launch"
  type        = number
}



variable "env" {
  description = "The environment tag for the EC2 instance"
  type        = string
}