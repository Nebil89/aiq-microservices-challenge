terraform {
  backend "s3" {
    bucket         = "aiq-eks-terraform-backend-store"
    key            = "tfstate/eks_base_network"
    region         = "me-south-1" # I used the nearest regin in Bahrein
    dynamodb_table = "aiq_infra_builder_state_lock" # Using a DynamoDB lock to disable concurrent access to the tfstate
  }
}
