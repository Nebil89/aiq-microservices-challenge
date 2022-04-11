terraform {
  backend "s3" {
    bucket         = "aiq-eks-terraform-backend-store"
    key            = "tfstate/eks_cluster_auto-scaler"
    region         = "me-south-1"
    dynamodb_table = "aiq_infra_builder_state_lock"
  }
}
