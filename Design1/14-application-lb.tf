resource "aws_lb" "Design1_application_lb" {
  name               = "Design1-alb" # Name your ALB
  load_balancer_type = "application" # Specify the type as application

  # Define which subnets to attach to your ALB. These should be public subnets.
  subnets = [
    aws_subnet.public_subnet.id,
    aws_subnet.private_subnet.id
      ]

  security_groups = [aws_security_group.sg_Design1.id] # Attach one or more security groups

  enable_deletion_protection = false # Enable or disable deletion protection
  
  tags = {
    Environment = "production"
  }
}
