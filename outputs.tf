
# EC2-instance related outputs

output "ec2_instance_id" {
  value = module.ec2-instance.ec2_instance_id
}

output "public_ip" {
  value = module.ec2-instance.public_ip
}

output "private_ip" {
  value = module.ec2-instance.private_ip
}

output "ssh_connection_string" {
  value = "ssh -i /Users/prasadambati/.ssh/id_ed25519 ec2-user@${module.ec2-instance.public_ip}"
}

# Key-Pair related outputs

output "key_pair_name" {
  value = module.key_pair.key_pair_name
}

# VPC outputs#####################################

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "cidr_block" {
  value = module.vpc.CIDR
}

# Subnet Ouputs ############

output "public_subnet_ids" {
  value = module.public_subnets.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.private_subnets.private_subnet_ids
}

# Internet Gate Way ID ############
output "igw_id" {
  value = module.internet_gw.igw_id
}