resource "aws_eks_node_group" "eks_ng_private" {
  cluster_name    = aws_eks_cluster.eks-cluster.name
  node_group_name = "${local.name}-eks_ng_private"
  node_role_arn   = aws_iam_role.eks_node_group_role.arn
  subnet_ids      = module.vpc.private_subnets
#   version         = var.cluster_version != null ? var.cluster_version : "1.35"

  ami_type = "AL2023_x86_64_STANDARD"
  capacity_type = "ON_DEMAND"
  disk_size = 20
  instance_types = ["t3.medium"]

  remote_access {
    ec2_ssh_key = "vims"
  }

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.eks-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks-AmazonEC2ContainerRegistryReadOnly,
  ]

  tags = {
    Name = "${local.name}-eks_ng_private"
  }
}