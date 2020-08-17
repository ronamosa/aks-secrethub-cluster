resource "azurerm_virtual_network" "k8svnet" {
  name                = "k8s-vnet"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  address_space       = [var.vnet_address_prefix]
}

resource "azurerm_subnet" "k8subnet" {
  name                 = "k8s-subnet"
  virtual_network_name = azurerm_virtual_network.k8svnet.name
  resource_group_name  = azurerm_resource_group.aks_rg.name
  address_prefix       = var.subnet_address_prefix
}
