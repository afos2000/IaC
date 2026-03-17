module "cert_manager" {
  source     = "../../modules/kube-helm-chart"
  name       = "cert-manager"
  chart      = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart_version = "1.20.10"
  namespace  = var.namespace_cert_manager
  values     = [file("${path.module}/values.yaml")]
}

output "cert_manager_release" {
  value = module.cert_manager.release_name
}
