module "key_pair" {
  source     = "../../modules/key-pair"
  public_key = file("../../.ssh/id_ed25519.pub")
  org        = var.org
  env        = var.env
}

module "ec2-instance" {
  source                    = "../../modules/ec2-instance"
  ec2_ami_id                = var.ec2_ami_id
  instance_type             = var.instance_type
  key_pair_name             = module.key_pair.key_pair_name
  vpc_id = module.vpc.vpc_id
  public_subnet_ids =  module.public_subnets.public_subnet_ids
  security_group_id = module.security_group.security_group_id
  org                       = var.org
  env                       = var.env
  user_data_jenkins_install = file("../../Jenkins-Install/jenkins_-install.sh")
}

module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = var.cidr_block
  org        = var.org
  env        = var.env
}

module "security_group" {
  source = "../../modules/security-group"
  vpc_id = module.vpc.vpc_id
  org    = var.org
  env    = var.env
}

module "internet_gw"{
  source = "../../modules/internet_gate_way"
  vpc_id = module.vpc.vpc_id
}

module "public_subnets" {
  source             = "../../modules/subnet"
  vpc_id             = module.vpc.vpc_id
  subnet_cidr_blocks = var.public_subnet_cidr_blocks
  availability_zones = var.availability_zones
  org                = var.org
  env                = var.env
  subnet_type        = "public"
}

module "private_subnets" {
  source             = "../../modules/subnet"
  vpc_id             = module.vpc.vpc_id
  subnet_cidr_blocks = var.private_subnet_cidr_blocks
  availability_zones = var.availability_zones
  org                = var.org
  env                = var.env
  subnet_type        = "private"
}

module "public_route_table" {
  source = "../../modules/route-table"
  vpc_id = module.vpc.vpc_id
  igw_id = module.internet_gw.igw_id
  org = var.org
  env = var.env
}


