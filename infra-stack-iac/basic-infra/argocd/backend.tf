# Local backend is the default; keep this file as a reminder and for easy switch to remote.
# Uncomment and edit for Terraform Cloud or other remote backends.

# Example (Terraform Cloud):
# terraform {
#   backend "remote" {
#     organization = "afos2000"
#     workspaces {
#       name = "IaC"
#     }
#   }
# }

# Example (local explicit):
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
