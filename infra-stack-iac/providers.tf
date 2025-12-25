variable "kubeconfig_path" {
  description = "Path to kubeconfig file. If empty, provider will use KUBECONFIG env or in-cluster config."
  type        = string
  default     = ""
}

provider "kubernetes" {
  # prefer environment KUBECONFIG; fallback to explicit path
  config_path = var.kubeconfig_path != "" ? var.kubeconfig_path : null
}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path != "" ? var.kubeconfig_path : null
  }
}

# Note: For Terraform Cloud workspaces, backend is configured in each environment/backend.tf or via CLI
# Add provider-specific configuration as needed (e.g., exec auth, token, host).
