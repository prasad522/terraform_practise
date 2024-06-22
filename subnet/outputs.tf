output "public_subnet_ids" {
  value = aws_subnet.public_subnet[*].id
}



output "private_subnet_cidr_blocks" {
  value = aws_subnet.subnet[*].id
}



