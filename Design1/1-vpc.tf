resource "aws_vpc" "Design1_vpc" {
  cidr_block = "10.0.0.0/16"  // IP range inside the VPC
  instance_tenancy = "default"

  tags = {
    "Name" = "Design1_vpc"
  }
}







# https://youtu.be/hw3uWq4FPhU