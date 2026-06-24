module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = var.tags
  public_subnet_1a = module.eks_network.public_subnet_1a
  public_subnet_1b = module.eks_network.public_subnet_1b
}

module "eks_managed_node_group" {
  source           = "./modules/managed-node-group"
  project_name     = var.project_name
  tags             = var.tags
  eks_cluster_name = module.eks_cluster.cluster_name
  subnet_id_1      = module.eks_network.private_subnet_1a
  subnet_id_2      = module.eks_network.private_subnet_1b
}

module "aws_load_balancer_controller" {
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  tags         = var.tags
  oidc         = module.eks_cluster.oidc
  cluster_name = module.eks_cluster.cluster_name
}