resource "kubernetes_namespace_v1" "this" {
  metadata {
    name = var.name
    labels = var.labels
  }
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      metadata[0].name
    ]
  }
}
