resource "aws_security_group" "sg_Design1" {
    vpc_id = aws_vpc.Design1_vpc.id

    egress  {  // defines outbound traffic
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {   // defines inbound traffic
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {  // defines inbound traffic
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {   // defines inbound traffic
        from_port = 6443
        to_port = 6443
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {   // defines inbound traffic
        from_port = 2379
        to_port = 2379
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
        "Name" = "sg_Design1"
        "Description" = "sg_Design1"
    }
  
}