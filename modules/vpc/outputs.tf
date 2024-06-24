output "vpc_id" {
  value = aws_vpc.main.id
}

output "CIDR" {
  value = aws_vpc.main.cidr_block
}

