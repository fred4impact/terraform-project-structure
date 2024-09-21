variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID"
  type        = string
}

variable "key_name" {
  description = "The key name for SSH access"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Associate public IP address"
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the instance"
  type        = string
}
