
output "ec2_instance_id" {
  value = aws_instance.Jenkins-Server.id
}

output "public_ip" {
  value = aws_instance.Jenkins-Server.public_ip
}

output "private_ip" {
  value = aws_instance.Jenkins-Server.private_ip
}

output "ssh_connection_string" {
  value = "ssh -i /Users/prasadambati/.ssh/id_ed25519 ec2-user@${aws_instance.Jenkins-Server.public_ip}"
}

