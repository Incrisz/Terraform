
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.Design1_application_lb.arn  // Ensure this refers to your load balancer's ARN
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Design1_tg.arn  // Your target group ARN
  }
}
