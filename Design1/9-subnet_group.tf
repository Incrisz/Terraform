resource "aws_db_subnet_group" "Design1_db_subnet_group" {
  name       = "my-db-subnet-group" # A name for the DB Subnet Group
  subnet_ids = [
    aws_subnet.public_subnet.id,    # Subnet ID in us-east-1a (example)
    aws_subnet.private_subnet.id    # Subnet ID in us-east-1b (example)
  ] 

  tags = {
    Name = "MyDBSubnetGroup"
  }
}
