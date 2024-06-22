output "subnet_ids" {
  value = aws_subnet.subnet[*].id
}

output "public_subnet_ids" {
  value = [for subnet in aws_subnet.subnet : subnet.id if contains(keys(subnet.tags), "type") && subnet.tags.type == "public"]
}

output "private_subnet_ids" {
  value = [for subnet in aws_subnet.subnet : subnet.id if contains(keys(subnet.tags), "type") && subnet.tags.type == "private"]
}


