resource "aws_lb_target_group_attachment" "Design1_attach_worker1" {
  target_group_arn = aws_lb_target_group.Design1_tg.arn
  target_id        = aws_instance.ec2-worker1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "Design1_attach_worker2" {
  target_group_arn = aws_lb_target_group.Design1_tg.arn
  target_id        = aws_instance.ec2-worker2.id
  port             = 80
}
