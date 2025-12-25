# Remote backend configuration for Terraform Cloud (configured for your org `afos2000`).
# Assumption: workspace name will be `infra-stack-iac-dev`. Change as desired.
terraform {
	backend "remote" {
		organization = "afos2000"

		workspaces {
			name = "IaC"
		}
	}
}

# If you prefer to use an S3/GCS backend instead, keep the example below and adapt it.
# S3 backend example:
# terraform {
#   backend "s3" {
#     bucket = "your-terraform-state-bucket"
#     key    = "infra-stack-iac/dev/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

# Notes:
# - Create the workspace `infra-stack-iac-dev` in Terraform Cloud (VCS-connected or CLI-driven).
# - Add `TF_TOKEN_app_terraform_io` as a secret in GitHub Actions or export it locally to authenticate during `terraform init`.
# - If your Kubernetes cluster is private, consider running Terraform from a machine with network access or using Terraform Cloud Agents.
