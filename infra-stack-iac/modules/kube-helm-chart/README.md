# kube-helm-chart module

Lightweight wrapper around `helm_release` to install Helm charts with a small set of inputs.

Inputs
- name: release name
- chart: chart name
- repository: chart repository URL
- version: chart version (optional)
- namespace: namespace to install into
- values: list of values (optional) — pass with `values = [file("./myvalues.yaml")]`

Outputs
- release_name

Notes
- This module uses the `helm` provider. Make sure provider auth is configured (kubeconfig or in-cluster).
