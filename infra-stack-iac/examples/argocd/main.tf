module "argocd" {
  source     = "../../modules/kube-helm-chart"
  name       = var.release_name
  chart      = "argo-cd"
  chart_version = "9.1.7"
  repository = "https://argoproj.github.io/argo-helm/"
  namespace  = var.namespace
  # Use the full values file copied from your previous `stack` repo for a more complete configuration.
  # For fast local testing you can switch to `values.yaml` (minimal) instead.
  values     = [file("${path.module}/values.yaml")]
}

output "argocd_release" {
  value = module.argocd.release_name
}
