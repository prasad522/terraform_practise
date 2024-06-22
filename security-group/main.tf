resource "aws_security_group" "jenkins_sg" {
  name        = "${var.org}_${var.env}_jenkins_sg"
  description = "Security group for Jenkins Server"
  vpc_id      = var.vpc_id
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow HTTP for Jenkins"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.org}_${var.env}_jenkins_sg"
    org  = var.org
    env  = var.env
  }
}



