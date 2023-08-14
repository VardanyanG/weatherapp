output "vpc_name" {
  value = aws_vpc.dev_vpc.id
}

output "pub_1_snet_name" {
  value = aws_subnet.dev_public_subnet_1.id
}
output "pub_2_snet_name" {
  value = aws_subnet.dev_public_subnet_2.id
}

output "private_1_snet_name" {
  value = aws_subnet.dev_private_subnet_1.id
}
output "private_2_snet_name" {
  value = aws_subnet.dev_private_subnet_2.id
}


output "aws_security_group" {
  value = aws_security_group.dev_sg.id
}

output "aws_internet_gateway" {
  value = aws_internet_gateway.dev_gw.id
}

output "aws_route_pub_1_table" {
  value = aws_route_table.dev_pub_rtable.id
}
output "aws_route_priv_1_table" {
  value = aws_route_table.dev_priv_1_rtable.id
}
output "aws_route_priv_2_table" {
  value = aws_route_table.dev_priv_2_rtable.id
}


output "aws_nat_gateway_1" {
  value = aws_nat_gateway.dev_nat_gw_1.id
}
output "aws_nat_gateway_2" {
  value = aws_nat_gateway.dev_nat_gw_2.id
}

output "ecr_repo_url" {
  value = aws_ecr_repository.dev_ecr.repository_url
}

output "aws_eks_cluster" {
  value = aws_eks_cluster.dev-eks.id
}