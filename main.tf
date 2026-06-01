resource "aws_security_group" "wordpress_sg" {
  name        = "wordpress-security-group"
  description = "Allow SSH, HTTP and HTTPS traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "WordPress-SG"
  }
}

resource "aws_instance" "wordpress_server" {
  ami                    = "ami-0326f9264af7e51e2"
  instance_type          = "t3.micro"
  key_name               = "project-key"
  vpc_security_group_ids = [aws_security_group.wordpress_sg.id]

  tags = {
    Name = "WordPress-Server"
  }
}