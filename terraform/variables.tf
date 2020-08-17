variable "env" {
  description = "The environment name"
}

variable "location" {
  description = "The region name for Azure resource"
  default     = "Australia Southeast"
}

variable "aks_name" {
  description = "Name of this cluster"
  default     = "development"
}

variable "aks_kubernetes_version" {
  description = "Kubernetes version to use."
  default     = "1.17.9"
}

variable "aks_subnet_name" {
  description = "The worker node subnet name"
  default     = "kubesubnet"
}

variable "vm_user_name" {
  description = "vm user name for worker nodes"
  default     = "vmuser1"
}

variable "aks_nodes_min_count" {
  default = "3"
}

variable "aks_nodes_max_count" {
  default = "6"
}

variable "default_node_pool" {
  description = "The object to configure the default node pool with number of worker nodes, worker node VM size and Availability Zones."
  type = object({
    name                           = string
    node_count                     = number
    vm_size                        = string
    cluster_auto_scaling           = bool
    cluster_auto_scaling_min_count = number
    cluster_auto_scaling_max_count = number
  })
}

variable "vnet_address_prefix" {
  description = "virtual network range"
}

variable "subnet_address_prefix" {
  description = "kubenet subnet cidr"
}



