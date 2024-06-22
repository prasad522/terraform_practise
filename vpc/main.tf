resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags = {
    Name = "${var.org}_${var.env}_vpc"
    org = var.org
    env = var.env
  }
}