resource "helm_release" "this" {
  name       = var.name
  chart      = var.chart
  repository = var.repository
  namespace  = var.namespace
  version = var.chart_version

  # just assign the list
  values = var.values

  lifecycle {
    ignore_changes = [values]
  }
}

output "release_name" {
  value = helm_release.this.name
}
