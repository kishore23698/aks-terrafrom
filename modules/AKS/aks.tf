resource "azurerm_kubernetes_cluster" "Indium_AKS" {
  resource_group_name = var.resource_group_name
  name                = var.aks_cluster_name
  location            = var.resource_group_location
  sku_tier            = var.aks_sku_tier
  kubernetes_version  = var.aks_kubernetes_version
  dns_prefix          = var.aks_dns_prefix
  automatic_channel_upgrade = var.aks_automatic_channel_upgrade
  #node_resource_group   = var.resource_group_name

  network_profile {
    network_plugin     = var.aks_network_plugin
    dns_service_ip     = var.aks_dns_service_ip
    service_cidr       = var.aks_service_cidr
    docker_bridge_cidr = var.aks_docker_bridge_cidr
    network_policy     = var.aks_network_policy
  }

  identity {
    type = var.aks_identity_type
  }

  default_node_pool {
    name                  = var.node_pool_name
    os_sku                = var.node_os_sku
    vm_size               = var.node_vm_size
    enable_auto_scaling  = var.node_enable_auto_scaling
    node_count            = var.node_count
    min_count             = var.node_min_count
    max_count             = var.node_max_count
    max_pods              = var.node_max_pods
    vnet_subnet_id       = var.subnet1_id
  }
  #depends_on = [
   # azurerm_virtual_network.Indium_AKS_vnet1,
    #azurerm_virtual_network.Indium_AKS_vnet2,
    #azurerm_subnet.Indium_AKS_subnet1,
    #azurerm_subnet.Indium_AKS_subnet2
  #]
}

