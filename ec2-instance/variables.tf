variable "ec2_ami_id" {
}

variable "instance_type" {

}

variable "key_pair_name" {

}
variable "vpc_id" {
  
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "security_group_id" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "org" {

}

variable "env" {

}

variable "user_data_jenkins_install" {

}