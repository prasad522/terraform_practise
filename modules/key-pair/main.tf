
resource "aws_key_pair" "jenkins_key_pair" {
  key_name   = "jenkins_pem_key_pair"
  public_key = var.public_key
  tags = {
    env  = var.env
    org  = var.org
  }
}