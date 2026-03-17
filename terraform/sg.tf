resource "aws_security_group" "allow_all" {
  name        = "allow-all-sg"
  description = "Allow all inbound and outbound traffic"
  tags        = {
    Name   = "allow-all-sg"
    env = "DEV"
  }

  ingress {
    description = "Allow all inbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # -1 means ALL protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}