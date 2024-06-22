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

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1" 
}

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
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"] // Change as needed
}


