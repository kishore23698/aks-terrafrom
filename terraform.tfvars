resource_group_name     = "Indium_Resource_group"
resource_group_location = "westus"

vnet1_name          = "Indium_AKS_vnet1"
vnet1_address_space = ["10.0.0.0/16"]

vnet2_name          = "Indium_AKS_vnet2"
vnet2_address_space = ["10.1.0.0/16"]


subnet1_name             = "Indium_AKS_subnet1"
subnet1_address_prefixes = ["10.0.0.0/24"]

subnet2_name             = "Indium_AKS_subnet2"
subnet2_address_prefixes = ["10.0.1.0/24"]


aks_cluster_name            = "Indium_AKS"
aks_sku_tier                = "Free"
aks_kubernetes_version      = "1.27.7"
aks_dns_prefix              = "Indiumaks1"
aks_automatic_channel_upgrade = "stable"

aks_network_plugin          = "kubenet"
aks_dns_service_ip          = "10.1.0.10"
aks_service_cidr            = "10.1.0.0/16"
aks_docker_bridge_cidr      = "172.17.0.1/16"
aks_network_policy          = "calico"

aks_identity_type           = "SystemAssigned"

node_pool_name              = "defaultnode"
node_os_sku                 = "Ubuntu"
node_vm_size                = "Standard_D2_v2"
node_enable_auto_scaling    = true
node_count                  = 1
node_min_count              = 1
node_max_count              = 10
node_max_pods               = 30


aks_node_pool_name              = "indiumnode"
aks_node_pool_mode              = "System"
aks_node_pool_os_sku            = "Ubuntu"
aks_node_pool_vm_size           = "Standard_D2_v2"
aks_node_pool_enable_auto_scaling = true
aks_node_pool_node_count        = 1
aks_node_pool_min_count         = 1
aks_node_pool_max_count         = 10
aks_node_pool_max_pods          = 30

