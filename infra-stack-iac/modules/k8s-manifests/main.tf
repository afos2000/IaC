# Example: use provider 'kubernetes' (if it exposes `kubernetes_manifest`) or adapt to a kubectl/local-exec approach.
# This file intentionally left as a simple example. Replace with your preferred method.

# Example placeholder (commented):
# resource "kubernetes_manifest" "example" {
#   manifest = yamldecode(file("./example.yaml"))
# }

# If you want to run kubectl directly (less recommended), you can use a null_resource with local-exec:
# resource "null_resource" "kubectl_apply" {
#   provisioner "local-exec" {
#     command = "kubectl apply -f ${path.module}/example.yaml --kubeconfig=${var.kubeconfig_path}"
#   }
# }
