# The following Terraform configuration creates three Amazon EC2 instances within AWS.

# Define the first AWS EC2 instance with the logical name "ec2-control".
resource "aws_instance" "ec2-control" {
    # The AMI ID used to launch the instance, in this case an Ubuntu image.
    ami = "ami-04a81a99f5ec58529"
    
    # The instance type determines the hardware of the host computer used for the instance.
    instance_type = "t2.medium"
    
    # Associates the instance with a specific subnet using the ID from aws_subnet.public_subnet.
    subnet_id = aws_subnet.public_subnet.id
    
    # A list of security group IDs to assign to the instance for control over traffic.
    vpc_security_group_ids = [ aws_security_group.sg_custom.id ]
    
    # The key name that is paired with the instance for secure SSH access.
    key_name = "ipala2"

    # An additional map of tags assigned to the resource; here, giving the instance a name.
    tags = {
        "Name" = "ec2-control"
    }
}

# Define the second AWS EC2 instance with the logical name "ec2-worker1".
# This instance has similar configurations as the first instance but with a distinct tag name.
resource "aws_instance" "ec2-worker1" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.medium"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [ aws_security_group.sg_custom.id ]
    key_name = "ipala2"
    
    # Tag the instance as "ec2-worker1" to differentiate it from other instances.
    tags = {
        "Name" = "ec2-worker1"
    }
  
}

# Define the third AWS EC2 instance with the logical name "ec2-worker2".
# As with 'ec2-worker1', it shares the same setup but is tagged differently for identification.
resource "aws_instance" "ec2-worker2" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.medium"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [ aws_security_group.sg_custom.id ]
    key_name = "ipala2"
    
    # Tag the instance as "ec2-worker2" which allows for easy distinction among resources.
    tags = {
        "Name" = "ec2-worker2"
    }
}
