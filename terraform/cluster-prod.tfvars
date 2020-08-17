env = "prod"
aks_name = "aks-secrethub"
location = "australiasoutheast"

# Kubernetes Variables
aks_kubernetes_version = "1.17.9"

# AKS Node Pools
default_node_pool = {
    name                           = "nodepool"
    node_count                     = 3
    vm_size                        = "Standard_D2_v3"
    cluster_auto_scaling           = true
    cluster_auto_scaling_min_count = 5
    cluster_auto_scaling_max_count = 10
}

vnet_address_prefix = "15.0.0.0/8"
subnet_address_prefix = "15.0.0.0/22"
 

