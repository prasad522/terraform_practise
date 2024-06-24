resource "aws_instance" "Jenkins-Server" {
  ami           = var.ec2_ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  subnet_id = element(var.public_subnet_ids, 0)
  vpc_security_group_ids = var.security_group_id
  associate_public_ip_address = true
    tags = {
    Name = "${var.org}_${var.env}_Jenkins_Server"
    env  = var.env
    org  = var.org
  }

  user_data = var.user_data_jenkins_install
}
