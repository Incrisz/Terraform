resource "aws_autoscaling_group" "Design1_asg" {
  name_prefix             = "Design1-ASG-" # Name prefix for Auto Scaling Group
  min_size                = 1              # Minimum number of instances in the group
  max_size                = 3              # Maximum number of instances in the group
  desired_capacity        = 1              # Desired number of instances in the group
  vpc_zone_identifier     = [aws_subnet.public_subnet.id] # List of subnet IDs

  launch_template {
    id      = aws_launch_template.Design1_launch_template.id
    version = "$Latest"
  }

  health_check_type          = "EC2"     # Health check type can be either EC2 or ELB
  health_check_grace_period  = 300       # Time until instances are confirmed healthy
  force_delete               = true      # Whether to force delete instances on destroy

  tag {
    key                 = "Name"
    value               = "Design1-instance"
    propagate_at_launch = true
  }
}

# Note: Replace 'aws_subnet.public_subnet.id' with your actual subnet ID.
