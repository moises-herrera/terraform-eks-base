module "app_vpc" {
  source          = "./modules/vpc"
  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
  cluster_name    = var.cluster_name
}

module "app_eks" {
  source       = "./modules/eks"
  eks_version  = var.eks_version
  cluster_name = var.cluster_name
  vpc_id       = module.app_vpc.vpc_id
  subnet_ids   = module.app_vpc.private_subnets
}
