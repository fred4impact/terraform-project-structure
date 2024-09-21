provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source               = "../../modules/vpc"
  cidr_block           = var.vpc_cidr_block
  name                 = var.vpc_name
  subnet_cidr_blocks   = var.subnet_cidr_blocks
  availability_zones   = var.availability_zones
  map_public_ip_on_launch = var.map_public_ip_on_launch
}

module "ec2" {
  source              = "../../modules/ec2"
  ami                 = var.ec2_ami
  instance_type       = var.ec2_instance_type
  subnet_id           = module.vpc.subnet_ids[0]
  key_name            = var.ec2_key_name
  associate_public_ip_address = true
  name                = "dev-instance"
}

module "rds" {
  source                = "../../modules/rds"
  allocated_storage     = var.rds_allocated_storage
  engine                = var.rds_engine
  instance_class        = var.rds_instance_class
  db_name               = var.rds_db_name
  username              = var.rds_username
  password              = var.rds_password
  parameter_group_name  = var.rds_parameter_group_name
  skip_final_snapshot   = true
  name                  = "dev-db"
}
