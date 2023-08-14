# Create public subnet resource inside the VPC
resource "aws_subnet" "dev_public_subnet_1" {
  vpc_id                  = aws_vpc.dev_vpc.id
  cidr_block              = var.snet_public_cidr_1 # Change this to your desired CIDR block for the subnet
  availability_zone       = "us-east-1a"           # Change this to your desired availability zone
  map_public_ip_on_launch = true
  tags = {
    Name                        = "dev-public-subnet-1"
    "Kubernetes.io/cluster/eks" = "shared"
    "Kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "dev_public_subnet_2" {
  vpc_id                  = aws_vpc.dev_vpc.id
  cidr_block              = var.snet_public_cidr_2 # Change this to your desired CIDR block for the subnet
  availability_zone       = "us-east-1b"           # Change this to your desired availability zone
  map_public_ip_on_launch = true
  tags = {
    Name                        = "dev-public-subnet-2"
    "Kubernetes.io/cluster/eks" = "shared"
    "Kubernetes.io/role/elb"    = 1
  }
}

# Create public subnet resource inside the VPC
resource "aws_subnet" "dev_private_subnet_1" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.snet_private_cidr_1 # Change this to your desired CIDR block for the subnet
  availability_zone = "us-east-1a"            # Change this to your desired availability zone
  tags = {
    Name                              = "dev-private-subnet-1"
    "Kubernetes.io/cluster/eks"       = "shared"
    "Kubernetes.io/role/internal-elb" = 1
  }
}

resource "aws_subnet" "dev_private_subnet_2" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.snet_private_cidr_2 # Change this to your desired CIDR block for the subnet
  availability_zone = "us-east-1b"            # Change this to your desired availability zone
  tags = {
    Name                              = "dev-private-subnet-2"
    "Kubernetes.io/cluster/eks"       = "shared"
    "Kubernetes.io/role/internal-elb" = 1
  }
}