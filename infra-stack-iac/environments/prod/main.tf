# Placeholder for prod environment.
# Copy from ../dev and adapt backend/workspaces/variables for production.

locals {
  namespace = "prod"
}

module "namespace" {
  source = "../../modules/namespace"
  name   = local.namespace
}

# Add production modules and configuration here.
