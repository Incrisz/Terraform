
# For Application or Network Load Balancer
resource "aws_lb" "example" {
  name               = "my-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

  enable_deletion_protection = false

  tags = {
    Name = "my-lb"
  }
}

# resource "aws_security_group" "lb_sg" {
#   // Define your security group configuration here
# }

# resource "aws_subnet" "subnet1" {
#   // Define your subnet if not already defined in your Terraform configuration
# }

# resource "aws_subnet" "subnet2" {
#   // Define another subnet
# }



# For Classic Load Balancer

resource "aws_elb" "example" {
  name               = "my-clb"
  internal           = false
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  tags = {
    Name = "my-clb"
  }
}

# resource "aws_security_group" "lb_sg" {
#   // Define your security group configuration here
# }

# resource "aws_subnet" "subnet1" {
#   // Define your subnet if not already defined in your Terraform configuration
# }

# resource "aws_subnet" "subnet2" {
#   // Define another subnet
# }
