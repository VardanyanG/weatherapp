resource "aws_security_group" "dev_sg" {
  name_prefix = var.aws_security_group
  vpc_id      = aws_vpc.dev_vpc.id
  tags = {
    Name = "Dev-SGS"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}