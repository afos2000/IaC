provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}

module "argo-workflows" {
  source        = "../../modules/kube-helm-chart"
  name          = "argo-workflows"
  chart         = "argo-workflows"
  chart_version = "1.0.2"
  repository    = "https://argoproj.github.io/argo-helm/"
  namespace     = var.namespace
  values        = [file("${path.module}/values.yaml")]
}

output "argo-workflows_release" {
  value = module.argo-workflows.release_name
}

module "postgresql" {
  source        = "../../modules/kube-helm-chart"
  name          = "postgresql"
  chart         = "postgresql"
  chart_version = "18.5.6"
  repository    = "oci://registry-1.docker.io/bitnamicharts"
  namespace     = var.namespace
  values        = [file("${path.module}/values-postgres.yaml")]
}

output "postgresql_release" {
  value = module.postgresql.release_name
}
