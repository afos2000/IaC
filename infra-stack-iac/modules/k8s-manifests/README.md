# k8s-manifests module

This module is a starting point for applying raw Kubernetes YAML manifests.

Options:
- Use the `kubernetes_manifest` resource (if your `kubernetes` provider version supports it).
- Or run `kubectl apply` via `null_resource` + `local-exec` as a last resort.

This module intentionally contains examples and is not prescriptive — adapt to your project's preferred workflow.
