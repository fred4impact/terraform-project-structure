variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Map public IP on launch"
  type        = bool
  default     = true
}

variable "ec2_ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "The instance type"
  type        = string
}

variable "ec2_key_name" {
  description = "The key name for SSH access"
  type        = string
}

variable "rds_allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
}

variable "rds_engine" {
  description = "The database engine"
  type        = string
}

variable "rds_instance_class" {
  description = "The instance class"
  type        = string
}

variable "rds_db_name" {
  description = "The name of the database"
  type        = string
}

variable "rds_username" {
  description = "The master username for the database"
  type        = string
}

variable "rds_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "rds_parameter_group_name" {
  description = "The name of the DB parameter group"
  type        = string
}
