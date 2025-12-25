# Base cluster components (cert-manager, sealed-secrets, etc.)

This folder will contain minimal Terraform examples to install cluster-level base components such as `cert-manager` and other foundational addons. The goal is to provide a small, reusable place to manage base apps that every cluster should have.

Current contents:
- `main.tf` — installs `cert-manager` via Helm (minimal values)
- `providers.tf` / `variables.tf` — provider configuration for local testing (Minikube)

Run (Minikube):
```bash
cd infra-stack-iac/examples/base
terraform init
terraform apply -auto-approve
```

Later you can add additional modules for `sealed-secrets`, `sealed-secrets-controller`, `node-problem-detector`, etc.
