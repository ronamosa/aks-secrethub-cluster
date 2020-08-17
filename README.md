# aks-secrethub-cluster

Basic cluster to follow my blog post on ['secrethub secrets management'](/some/url)

Follow the blog post for instructions on setting this up.

## Files included in `/terraform`

| filename | notes |
| --- | --- |
| aks.tf | azure kubernetes service |
| cluster-prod.tfvars | vars to define for this cluster |
| Makefile | used to do all the terraform building |
| network.tf | azure networking, vnet, subnet |
| provider.tf | azure provider 2.0 |
| variables.tf | variable definitions |
