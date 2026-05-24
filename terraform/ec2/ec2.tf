# Create ec2 instance
resource "aws_instance" "ec2" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.medium"
    vpc_security_group_ids = [aws_security_group.allow_all-sg.id]
    tags = {
      Name = "docker"
    }
}

resource "aws_security_group" "allow_all-sg" {
    name        = "allow_all_sg"
    description = "allow all the trrafic"

    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_all_sg"
    }
}