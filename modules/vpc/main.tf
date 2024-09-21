resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "main" {
  count                  = length(var.subnet_cidr_blocks)
  vpc_id                 = aws_vpc.main.id
  cidr_block             = var.subnet_cidr_blocks[count.index]
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone      = element(var.availability_zones, count.index)
  tags = {
    Name = "${var.name}-subnet-${count.index + 1}"
  }
}
