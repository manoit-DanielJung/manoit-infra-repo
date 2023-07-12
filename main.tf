module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "manoit-eks-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-09ec9a504619ffa0a"

  private_subnets = ["subnet-048eae356fffbbe26", "subnet-0c73f6e0be015cae8"]
  public_subnets  = ["subnet-0650b25e5c78fc5af", "subnet-082a2d6d905bde8d4"]
}