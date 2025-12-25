variable "name" {
  description = "Helm release name"
  type        = string
}

variable "chart" {
  description = "Chart name (eg. ingress-nginx)"
  type        = string
}

variable "repository" {
  description = "Chart repository URL"
  type        = string
}

variable "chart_version" {
  description = "Chart version (optional)"
  type        = string
  default     = ""
}

variable "namespace" {
  description = "Namespace to install the chart into"
  type        = string
}

variable "values" {
  description = "Optional list of value files or inline values"
  type        = list(any)
  default     = []
}
