variable "namespaces" {
  description = "List of namespace names"
  type        = list(string)
  
}

variable "kubeconfig_path" {
  description = "Optional path to kubeconfig. If empty, provider uses KUBECONFIG env or in-cluster config."
  type        = string
  default     = "/home/afos2000/.kube/config"
}