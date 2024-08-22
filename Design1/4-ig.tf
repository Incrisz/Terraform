resource "aws_internet_gateway" "ig_Design1" {
    vpc_id = aws_vpc.Design1_vpc.id

    tags = {
      "Name" = "ig_Design1"
    }
  
}