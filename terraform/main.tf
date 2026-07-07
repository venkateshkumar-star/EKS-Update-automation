module "eks" {

  source  = "terraform-aws-modules/eks/aws"

  version = "~> 20.0"

  cluster_name = var.cluster_name

  cluster_version = "1.31"

  subnet_ids = [
    "subnet-xxxxx",
    "subnet-yyyyy"
  ]

  vpc_id = "vpc-xxxx"

  eks_managed_node_groups = {

    default = {

      instance_types = [var.node_instance_type]

      desired_size = var.desired_size

      min_size = var.min_size

      max_size = var.max_size

    }

  }

}
