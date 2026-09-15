provider "aws" {
  region = "us-east-1"
}


data "aws_eks_cluster" "cluster" {
  name = data.terraform_remote_state.eks.outputs.cluster-id
}

data "aws_eks_cluster_auth" "cluster" {
  name = data.terraform_remote_state.eks.outputs.cluster-id
}

#Terraform provider for Kubernetes. This provider is used to interact with the Kubernetes API server and manage resources within a Kubernetes cluster.
provider "kubernetes" {
  host                   = data.terraform_remote_state.eks.outputs.cluster_endpoint
  cluster_ca_certificate = base64decode(data.terraform_remote_state.eks.outputs.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}
