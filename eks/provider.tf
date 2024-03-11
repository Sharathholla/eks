provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket="sharath-terraform-statefiles"
    key = "EKS/eks"
    region="us-east-2"
  }
}
