module "cert_manager" {
  source     = "../../modules/kube-helm-chart"
  name       = "cert-manager"
  chart      = "cert-manager"
  repository = "https://charts.jetstack.io"
  namespace  = var.namespace_cert_manager
  values     = [file("${path.module}/cert-manager-values.yaml")]
}

output "cert_manager_release" {
  value = module.cert_manager.release_name
}
