resource "aws_eks_cluster" "tfer--dev" {
  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.100.0.0/16"
  }

  name     = "dev"
  role_arn = "arn:aws:iam::775422423362:role/EKSClusterRole"

  tags = {
    Used_By = "All"
    Used_by = "Sharath Holla"
  }

  tags_all = {
    Used_By = "all"
    Used_by = "Sharath Holla"
  }

  version = "1.27"

  vpc_config {
    endpoint_private_access = "true"
    endpoint_public_access  = "true"
    public_access_cidrs     = ["0.0.0.0/0"]
    subnet_ids              = ["subnet-03c47f7010c4fe732", "subnet-05b921d732bb43f0b", "subnet-0e793eb0b9abff34f"]
  }
}
