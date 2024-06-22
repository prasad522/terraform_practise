resource "aws_subnet" "subnet" {
  count = length(var.subnet_cidr_blocks)

  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_cidr_blocks[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = var.subnet_type == "public" ? true : false
  tags = {
    Name = "${var.org}_${var.env}_${var.subnet_type}_subnet_${count.index + 1}"
    org  = var.org
    env  = var.env
    type = var.subnet_type
  }
}
