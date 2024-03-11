resource "aws_eks_node_group" "tfer--dev_node" {
  ami_type        = "AL2_x86_64"
  capacity_type   = "ON_DEMAND"
  cluster_name    = "${aws_eks_cluster.tfer--dev.name}"
  disk_size       = "20"
  instance_types  = ["t2.micro"]
  node_group_name = "dev_node"
  node_role_arn   = "arn:aws:iam::775422423362:role/AmazonEKSNodeRole"
  release_version = "1.27.9-20240227"

  scaling_config {
    desired_size = "1"
    max_size     = "1"
    min_size     = "1"
  }

  subnet_ids = ["subnet-03c47f7010c4fe732", "subnet-05b921d732bb43f0b", "subnet-0e793eb0b9abff34f"]

  tags = {
    Used_By = "All"
    Used_by = "Sharath Holla"
  }

  tags_all = {
    Used_By = "All"
    Used_by = "Sharath Holla"
  }

  update_config {
    max_unavailable = "1"
  }

  version = "1.27"
}
