resource "aws_instance" "ec2-worker2" {
    ami = "ami-04a81a99f5ec58529"  //ubuntu image
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [ aws_security_group.sg_Design1.id ]
    key_name = "ipala2"

    tags = {
      "Name" = "ec2-worker2"
    }
  
}


resource "aws_instance" "ec2-worker1" {
    ami = "ami-04a81a99f5ec58529"  //ubuntu image
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [ aws_security_group.sg_Design1.id ]
    key_name = "ipala2"

    tags = {
      "Name" = "ec2-worker1"
    }
  
}




