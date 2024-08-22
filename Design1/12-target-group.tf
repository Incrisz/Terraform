resource "aws_lb_target_group" "Design1_tg" {
  name     = "Design1-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Design1_vpc.id

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200"
  }

  # Define stickiness
  stickiness {
    type            = "lb_cookie"       # Use load balancer generated cookie
    cookie_duration = 86400             # Duration in seconds. In this case, one day (24 * 60 * 60)
    enabled         = true              # Enable stickiness
  }


}
