resource "aws_autoscaling_attachment" "asg_lb_attachment" {
  autoscaling_group_name = aws_autoscaling_group.Design1_asg.name
  lb_target_group_arn    = aws_lb_target_group.Design1_tg.arn
}
