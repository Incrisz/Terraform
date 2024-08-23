resource "aws_launch_template" "Design1_launch_template" {
  name_prefix   = "Design1-Template"
  description   = " launch template to install Apache2. v1"
  image_id      = "ami-04a81a99f5ec58529" # Use your own AMI ID
  instance_type = "t2.micro"              # Choose your preferred instance type

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 8
      volume_type = "gp2"
    }
  }

  key_name                    = "ipala2"                              # Specify your key pair name
   network_interfaces {
    subnet_id = aws_subnet.public_subnet.id # Substitute with the correct subnet ID that's in the same VPC
    associate_public_ip_address = true      # Set to false if you do not want public IPs
    security_groups             = [aws_security_group.sg_Design1.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "Design1MyInstance"                                      # Name tag for the EC2 instance
    }
  }

  user_data = base64encode(<<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
EOF
)                                                                       # This script updates the package lists and installs Apache2
}
