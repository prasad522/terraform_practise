# AWS Region Variable
variable "region" {

}
# ec2 instance variables
variable "ec2_ami_id" {

}

variable "instance_type" {

}

variable "org" {

}
variable "env" {

}

variable "cidr_block" {

}
variable "public_subnet_cidr" {

}

# Subnet variable declaration ##########

variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] // Change as needed
}

variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"] // Change as needed
}

variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"] // Change as needed
}


