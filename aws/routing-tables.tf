resource "aws_route_table" "dev_pub_rtable" {
  vpc_id = aws_vpc.dev_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev_gw.id
  }
  #route {
  #  ipv6_cidr_block        = "::/0"
  #  egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
  #}

  tags = {
    Name = "Dev Public Route Table "
  }
}



resource "aws_route_table" "dev_priv_1_rtable" {
  vpc_id = aws_vpc.dev_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.dev_nat_gw_1.id
  }
  #route {
  #  ipv6_cidr_block        = "::/0"
  #  egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
  #}

  tags = {
    Name = "Dev Private Route Table 1"
  }
}


resource "aws_route_table" "dev_priv_2_rtable" {
  vpc_id = aws_vpc.dev_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.dev_nat_gw_2.id
  }
  #route {
  #  ipv6_cidr_block        = "::/0"
  #  egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
  #}

  tags = {
    Name = "Dev Private Route Table 2"
  }
}


resource "aws_route_table_association" "dev_subnet_pub_1_association" {
  subnet_id      = aws_subnet.dev_public_subnet_1.id
  route_table_id = aws_route_table.dev_pub_rtable.id
}
resource "aws_route_table_association" "dev_subnet_pub_2_association" {
  subnet_id      = aws_subnet.dev_public_subnet_2.id
  route_table_id = aws_route_table.dev_pub_rtable.id
}
resource "aws_route_table_association" "dev_subnet_private_1_association" {
  subnet_id      = aws_subnet.dev_private_subnet_1.id
  route_table_id = aws_route_table.dev_priv_1_rtable.id
}
resource "aws_route_table_association" "dev_subnet_private_2_association" {
  subnet_id      = aws_subnet.dev_private_subnet_2.id
  route_table_id = aws_route_table.dev_priv_1_rtable.id
}