resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.Design1_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true  // creates public ip for this subnet

  tags = {
    "Name" = "10.0.2.0 - us-east-1a"
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.Design1_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = false  // No public ip for this subnet

  tags = {
    "Name" = "10.0.3.0 - us-east-1b"
  }
}