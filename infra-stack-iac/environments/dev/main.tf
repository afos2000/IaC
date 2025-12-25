locals {
  namespace = "dev"
}

module "namespace" {
  source = "../../modules/namespace"
  name   = local.namespace
}

module "example_chart" {
  source     = "../../modules/kube-helm-chart"
  name       = "nginx-ingress"
  chart      = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  namespace  = module.namespace.name
  # values = [file("./values.yaml")] # optional
}
