# infra-stack-iac

Opinionated Terraform scaffold for Kubernetes + Helm deployments.

Structure

infra-stack-iac/
- README.md
- environments/
  - dev/
    - main.tf
    - variables.tf
    - backend.tf (example/commented)
  - prod/ (placeholder)
- modules/
  - kube-helm-chart/ (generic helm_release wrapper)
  - namespace/
  - k8s-manifests/ (examples for applying raw YAML)
- providers.tf
- versions.tf
- .github/workflows/terraform.yml

Quick start

- Edit `environments/dev/backend.tf` to configure your remote backend (Terraform Cloud or S3, etc.) or use local state during development.
- Provide `KUBECONFIG` or set `kubeconfig_path` in the environment variables or workspace variables.
- From `infra-stack-iac/environments/dev` run `terraform init` and `terraform plan`.

Phase 2 — provider and versions: this scaffold includes a conservative `versions.tf` and `providers.tf` with recommended provider pins for `kubernetes` and `helm`.

Notes

- The modules are lightweight starting points. Customize inputs/outputs and add more resources as required.
- CI workflow included under `.github/workflows/terraform.yml` runs fmt/validate/plan on PRs and pushes.
