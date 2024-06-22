
resource "aws_instance" "Jenkins-Server" {
  ami           = var.ec2_ami_id
  instance_type = var.instance_type
  key_name      = "jenkins_pem_key_pair"
  tags = {
    Name = "${var.org}_${var.env}_Jenkins_Server"
    env  = var.env
    org  = var.org
  }

  user_data = var.user_data_jenkins_install
}
