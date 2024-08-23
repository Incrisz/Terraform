
# resource "aws_lb_listener" "https" {
#   load_balancer_arn = aws_lb.Design1_application_lb.arn
#   port              = "443"
#   protocol          = "HTTPS"
#   ssl_policy        = "ELBSecurityPolicy-2016-08" # or another SSL policy

#   certificate_arn   = aws_acm_certificate.cert.arn // Specify your SSL certificate ARN here

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.Design1_tg.arn
#   }
# }
