
resource "aws_lb_target_group" "example" {
  provider = aws.east-2
  name     = "terraform"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-0e3c8b4be9099d268" # Replace with your VPC ID

  health_check {
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    timeout             = 3
    healthy_threshold   = 3
    unhealthy_threshold = 3
    matcher             = "200"
  }

  // Other target group configurations...
}
