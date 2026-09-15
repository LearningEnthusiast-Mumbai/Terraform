output "cluster-id" {
  value = aws_eks_cluster.eks-cluster.id
}
output "cluster_ip" {
  value = aws_eks_cluster.eks-cluster.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.eks-cluster.name
}

output "cluster_arn" {
  value = aws_eks_cluster.eks-cluster.arn
}

output "cluster_oidc_issuer" {
  value = aws_eks_cluster.eks-cluster.identity[0].oidc[0].issuer
}

output "cluster_certificate_authority_data" {
  value = aws_eks_cluster.eks-cluster.certificate_authority[0].data
}

output "cluster_version" {
  value = aws_eks_cluster.eks-cluster.version
}

output "cluster_status" {
  value = aws_eks_cluster.eks-cluster.status
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks-cluster.endpoint
}

output "cluster_security_group_id" {
  value = aws_eks_cluster.eks-cluster.vpc_config[0].cluster_security_group_id
}

output "node_group_name" {
  value = aws_eks_node_group.eks_ng_public.node_group_name
}

output "node_group_arn" {
  value = aws_eks_node_group.eks_ng_public.arn
}

output "node_group_status" {
  value = aws_eks_node_group.eks_ng_public.status
}

output "node_group_version" {
  value = aws_eks_node_group.eks_ng_public.version
} 


output "node_group_private_status" {
  value = aws_eks_node_group.eks_ng_private.status
}

output "node_group_private_arn" {
  value = aws_eks_node_group.eks_ng_private.arn
}

output "node_group_private_version" {
  value = aws_eks_node_group.eks_ng_private.version
}
