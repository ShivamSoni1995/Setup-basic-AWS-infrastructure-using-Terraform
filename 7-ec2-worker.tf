resource "aws_instance" "ec2-worker1" {
    ami = "ami-0e53db6fd757e38c7"
    instance_type = "t2.medium"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.sg_custom.id]
    key_name =  "Terraform1"

    tags = {
        "Name" = "ec2-worker1"
    }
  
}

resource "aws_instance" "ec2-worker2" {
    ami = "ami-0e53db6fd757e38c7"
    instance_type = "t2.medium"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.sg_custom.id]
    key_name = "Terraform1"

    tags = {
        "Name" = "ec2-worker2"
    }
  
}

resource "aws_instance" "ec2-worker3" {
    ami = "ami-0e53db6fd757e38c7"
    instance_type = "t2.medium"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.sg_custom.id]
    key_name = "Terraform1"

    tags = {
        "Name" = "ec2-worker3"
    }
  
}