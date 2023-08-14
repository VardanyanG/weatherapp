resource "aws_eip" "dev_eip_1" {
  #vpc = true
  domain = "vpc"

  tags = {
    Name = var.dev_eip_1
  }
  depends_on = [aws_internet_gateway.dev_gw]
}

resource "aws_eip" "dev_eip_2" {
  #vpc = true
  domain = "vpc"

  tags = {
    Name = var.dev_eip_2
  }
  depends_on = [aws_internet_gateway.dev_gw]
}