resource "aws_route_table_association" "rt_Design1_internet_association" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.rt_Design1_internet.id

}