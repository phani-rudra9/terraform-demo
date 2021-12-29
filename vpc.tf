resource "aws_vpc" "demo" {
  cidr_block       = "10.1.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "demo-vpc"
    terraformed="true"
    created_by="phani"
  }
}

resource "aws_subnet" "public_1a" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "10.1.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "demo-public-subnet-1A"
  }
}