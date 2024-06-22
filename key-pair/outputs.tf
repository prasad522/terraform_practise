output "public_key" {
  value = aws_key_pair.jenkins_key_pair.public_key
}

output "key_pair_name" {
  value = aws_key_pair.jenkins_key_pair.key_name
}