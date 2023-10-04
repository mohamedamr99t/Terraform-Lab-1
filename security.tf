#Create Security Group which allow ssh
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description      = "connect anywhere"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_SSH"
  }
}
#ssh & port 3000
resource "aws_security_group" "allow_ssh_and_port_3000" {
  name        = "allow_ssh_and_port_3000"
  description = "Allow SSH and port 3000 inbound traffic from VPC CIDR only"
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description      = "SSH from VPC CIDR"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.myvpc.cidr_block]
  }

  ingress {
    description      = "Port 3000 from VPC CIDR"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.myvpc.cidr_block]
  }


  egress {
    description      = "Port 3000 from VPC CIDR"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_SSH_and_port_3000"
  }
}
