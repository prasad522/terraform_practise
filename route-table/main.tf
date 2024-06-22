variable "vpc_id" {
  
}

variable "igw_id" {
  
}

variable "org" {
  
}

variable "env" {
  
}

resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = {
    Name = "${var.org}_${var.env}_public_route_table"
    org = var.org
    env = var.env
  }
}