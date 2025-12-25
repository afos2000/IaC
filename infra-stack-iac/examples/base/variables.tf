variable "kubeconfig_path" {
  description = "Optional path to kubeconfig. If empty, provider uses KUBECONFIG env or in-cluster config."
  type        = string
  default     = ""
}

variable "namespace_cert_manager" {
  description = "Namespace to install cert-manager into"
  type        = string
  default     = "cert-manager"
}
