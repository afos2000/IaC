variable "kubeconfig_path" {
  description = "Optional path to kubeconfig. If empty, provider uses KUBECONFIG env or in-cluster config."
  type        = string
  default     = ""
}

provider "kubernetes" {
  config_path = var.kubeconfig_path != "" ? var.kubeconfig_path : null
}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path != "" ? var.kubeconfig_path : null
  }
}
