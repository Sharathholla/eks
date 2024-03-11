output "aws_eks_cluster_tfer--dev_id" {
  value = "${aws_eks_cluster.tfer--dev.id}"
}

output "aws_eks_node_group_tfer--dev_node_id" {
  value = "${aws_eks_node_group.tfer--dev_node.id}"
}
