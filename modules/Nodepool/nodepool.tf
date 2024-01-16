resource "azurerm_kubernetes_cluster_node_pool" "Indium_AKS_node_pool" {
  name                  = var.aks_node_pool_name
  kubernetes_cluster_id = var.Indium_AKS_id
  mode                  = var.aks_node_pool_mode
  os_sku                = var.aks_node_pool_os_sku
  vm_size               = var.aks_node_pool_vm_size
  enable_auto_scaling   = var.aks_node_pool_enable_auto_scaling
  node_count            = var.aks_node_pool_node_count
  min_count             = var.aks_node_pool_min_count
  max_count             = var.aks_node_pool_max_count
  max_pods              = var.aks_node_pool_max_pods
  vnet_subnet_id        = var.subnet2_id
  
  #depends_on = [
   # azurerm_virtual_network.Indium_AKS_vnet1,
    #azurerm_virtual_network.Indium_AKS_vnet2,
    #azurerm_subnet.Indium_AKS_subnet1,
    #azurerm_subnet.Indium_AKS_subnet2
  #]

  tags = var.aks_node_pool_tags
}