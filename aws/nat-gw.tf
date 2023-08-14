resource "aws_nat_gateway" "dev_nat_gw_1" {
  subnet_id     = aws_subnet.dev_public_subnet_1.id
  allocation_id = aws_eip.dev_eip_1.id

  tags = {
    Name = var.dev_nat_gw_1
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.dev_gw]
}
resource "aws_nat_gateway" "dev_nat_gw_2" {
  subnet_id     = aws_subnet.dev_public_subnet_2.id
  allocation_id = aws_eip.dev_eip_2.id

  tags = {
    Name = var.dev_nat_gw_2
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.dev_gw]
}