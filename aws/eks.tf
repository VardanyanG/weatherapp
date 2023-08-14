resource "aws_iam_role" "dev-eks-role" {
  name = "dev-eks-cluster"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "dev-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.dev-eks-role.name
}

resource "aws_eks_cluster" "dev-eks" {
  name     = "dev-eks"
  role_arn = aws_iam_role.dev-eks-role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.dev_private_subnet_1.id,
      aws_subnet.dev_private_subnet_2.id,
      aws_subnet.dev_public_subnet_1.id,
      aws_subnet.dev_public_subnet_2.id
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.dev-AmazonEKSClusterPolicy]
}

