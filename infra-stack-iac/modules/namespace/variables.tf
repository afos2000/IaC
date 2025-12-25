variable "name" {
  description = "Namespace name"
  type        = string
}

variable "labels" {
  description = "Optional labels for the namespace"
  type        = map(string)
  default     = {}
}
