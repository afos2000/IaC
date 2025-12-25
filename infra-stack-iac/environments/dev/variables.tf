variable "kubeconfig_path" {
  description = "Optional kubeconfig path to use for provider auth. If empty, provider uses KUBECONFIG env or in-cluster config."
  type        = string
  default     = ""
}

variable "workspace" {
  description = "Optional terraform workspace name"
  type        = string
  default     = "dev"
}
