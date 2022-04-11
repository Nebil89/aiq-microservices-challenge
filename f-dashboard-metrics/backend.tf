terraform {
  backend "s3" {
    bucket         = "aiq-eks-terraform-backend-store"
    key            = "tfstate/eks_dashboard_metrics"
    region         = "me-south-1"
    dynamodb_table = "aiq_infra_builder_state_lock"
  }
}
