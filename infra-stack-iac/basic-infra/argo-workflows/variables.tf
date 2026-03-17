variable "kubeconfig_path" {
  description = "Optional path to kubeconfig. If empty, provider uses KUBECONFIG env or in-cluster config."
  type        = string
  default     = "/home/afos2000/.kube/config"
}

variable "namespace" {
  description = "Namespace to install ArgoWorkflows into"
  type        = string
  default     = "argo-workflows"
}

variable "release_name" {
  description = "Helm release name for ArgoWorkflows"
  type        = string
  default     = "argo-workflows"
}
