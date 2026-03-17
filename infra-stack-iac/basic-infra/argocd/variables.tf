variable "kubeconfig_path" {
  description = "Optional path to kubeconfig. If empty, provider uses KUBECONFIG env or in-cluster config."
  type        = string
  default     = "/home/afos2000/.kube/config"
}

variable "namespace" {
  description = "Namespace to install ArgoCD into"
  type        = string
  default     = "argocd"
}

variable "release_name" {
  description = "Helm release name for ArgoCD"
  type        = string
  default     = "argocd"
}
