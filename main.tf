module "key_pair" {
  source     = "./key-pair"
  public_key = file("/Users/prasadambati/.ssh/id_ed25519.pub")
  org = var.org
  env = var.env
}

module "ec2-instance" {
  source                    = "./ec2-instance"
  ec2_ami_id                = var.ec2_ami_id
  instance_type             = var.instance_type
  public_key                = module.key_pair.public_key
  org                       = var.org
  env                       = var.env
  user_data_jenkins_install = file("/Users/prasadambati/Desktop/terraform_practise/Jenkins-Install/jenkins_-install.sh")
}

module "vpc" {
  source = "./vpc"
  cidr_block = var.cidr_block
  org = var.org
  env = var.env
}

module "security_group" {
  source = "./security-group"
  vpc_id = module.vpc.vpc_id
  org = var.org
  env = var.env
}

module "public_subnets" {
  source              = "./modules/subnet"
  vpc_id              = module.vpc.vpc_id
  subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  availability_zones  = var.availability_zones
  org                 = var.org
  env                 = var.env
  subnet_type         = "public"
}

module "private_subnets" {
  source              = "./modules/subnet"
  vpc_id              = module.vpc.vpc_id
  subnet_cidr_blocks  = var.private_subnet_cidr_blocks
  availability_zones  = var.availability_zones
  org                 = var.org
  env                 = var.env
  subnet_type         = "private"
}





