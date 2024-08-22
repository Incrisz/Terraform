resource "aws_route_table" "rt_Design1_internet" {
    vpc_id = aws_vpc.Design1_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ig_Design1.id
    }

    tags = {
      "Name" = "rt_Design1_internet"
    }
  
}