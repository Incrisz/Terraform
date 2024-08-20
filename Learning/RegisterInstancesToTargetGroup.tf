# Example EC2 instances
resource "aws_instance" "example1" {
  # ...
}

resource "aws_instance" "example2" {
  # ...
}

# Target group defined elsewhere
resource "aws_lb_target_group" "example" {
  # ...
}

# Attach instance one to the target group
resource "aws_lb_target_group_attachment" "example1" {
  target_group_arn = aws_lb_target_group.example.arn   // pass the target group resource name
  target_id        = aws_instance.example1.id
  port             = 80
}

# Attach instance two to the target group
resource "aws_lb_target_group_attachment" "example2" {
  target_group_arn = aws_lb_target_group.example.arn   // pass the target group resource name
  target_id        = aws_instance.example2.id
  port             = 80
}
