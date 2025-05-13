# Method 1: Creating a SG, creating rules separetly and associating with the rules with SG
resource "aws_security_group" "sg_custom"{
vpc_id = aws_vpc.custom_vpc.id
tags = {
    "Name" = "sg_custom"
    }
}

resource "aws_security_group_rule" "egress" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = -1
    security_group_id = aws_security_group.sg_custom.id
}

------------------------------------------------------------------
Method 2: Using ingress and egress arguments within the "aws_security_group" resource

resource "aws_security_group" "sg_custom" {
    vpc_id = aws_vpc.custom_vpc.id

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]

    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    ingress {
        from_port = 6443
        to_port = 6443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    ingress {
        from_port = 2379
        to_port = 2379
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        "Name" = "sg_custom"
    }
  
}
