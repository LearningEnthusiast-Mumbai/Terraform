data "terraform_remote_state" "eks" {
    backend = "local"

    config = {
        path = "../EKS/terraform.tfstate"
    }
}

