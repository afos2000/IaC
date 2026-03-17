# ArgoCD example (Minikube)

This folder contains a minimal Terraform example that installs ArgoCD into a Kubernetes cluster (targetting Minikube by default) using the local `kube-helm-chart` module.

Goals
- Keep the example tiny so you can learn Terraform + Helm provider.
- Provide a clean place to add an ArgoCD ApplicationSet or app manifests later.

Quick run (Minikube)
1. Start Minikube and ensure kubectl works:
   ```bash
   minikube start
   kubectl get nodes
   ```
2. Ensure your `KUBECONFIG` points to Minikube or pass the path as an input variable.
   ```bash
   export KUBECONFIG=$HOME/.kube/config
   ```
3. From this directory:
   ```bash
   cd infra-stack-iac/examples/argocd
   terraform init
   terraform apply -auto-approve
   ```

Notes
- This example uses local state by default. When you are comfortable you can switch to Terraform Cloud by editing `backend.tf`.
- After ArgoCD is installed you can access the server (NodePort) with `kubectl get svc -n argocd`.
