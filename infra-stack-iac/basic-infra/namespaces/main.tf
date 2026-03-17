module "namespace" {
  source = "../../modules/namespace"
  name   = var.namespaces[count.index]
  count = length(var.namespaces)
  
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}