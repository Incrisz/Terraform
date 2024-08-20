# to create an ec2 instance
resource "aws_instance" "web" {
  ami           =  var.ami-us-east-2 # Replace with the actual Ubuntu AMI ID for your region
  instance_type = var.instance             # Specify the desired instance type
  # key_name               = "terraform"            # SSH key pair name
  provider = aws.east-2

  # vpc_security_group_ids = ["sg-abcdefgh"]          # List of VPC security group IDs

  # subnet_id              = "subnet-12345678"        # VPC Subnet ID to launch in

  # associate_public_ip_address = true                # Assign a public IP


  tags = {
    Name = "Terraform1"              # Give a name to your instance for easier identification
  }
}
