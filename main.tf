terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  #skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  #subscription_id = 
  #client_id = 
  #client_secret = 
  #tenant_id = 
}

terraform {
  backend "azurerm" {
    resource_group_name   = "AKS_Storage_account"
    storage_account_name   = "indiumaksterraformstate"
    container_name         = "aksstatefile"
    key                    = "terraform.tfstate"
  }
}


module "Resource_grp" {
  source = "./modules/Resource_grp"
  # add variables here
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "Vnet" {
  source = "./modules/Vnet"
  depends_on = [module.Resource_grp]
  # add variables here
  resource_group_name         = module.Resource_grp.RG_name
  resource_group_location = var.resource_group_location

  vnet1_name          = var.vnet1_name
  vnet1_address_space = var.vnet1_address_space

  vnet2_name          = var.vnet2_name
  vnet2_address_space = var.vnet2_address_space
  vnet_tags           = var.vnet_tags 
}

module "Subnet" {
  source = "./modules/Subnet"
  depends_on = [module.Vnet]
  # add variables here
  resource_group_name         = module.Resource_grp.RG_name

  vnet1_name = module.Vnet.Vnetwork1_name

  subnet1_name             = var.subnet1_name
  subnet1_address_prefixes = var.subnet1_address_prefixes

  subnet2_name             = var.subnet2_name
  subnet2_address_prefixes = var.subnet2_address_prefixes
}

module "AKS" {
  source = "./modules/AKS"
  depends_on = [module.Subnet]
  # add variables here
  resource_group_name         = module.Resource_grp.RG_name
  resource_group_location     = var.resource_group_location

  
  subnet1_id = module.Subnet.subnet1_id

  aks_cluster_name            = var.aks_cluster_name
  aks_sku_tier                = var.aks_sku_tier
  aks_kubernetes_version      = var.aks_kubernetes_version
  aks_dns_prefix              = var.aks_dns_prefix
  aks_automatic_channel_upgrade = var.aks_automatic_channel_upgrade

  aks_network_plugin          = var.aks_network_plugin
  aks_dns_service_ip          = var.aks_dns_service_ip
  aks_service_cidr            = var.aks_service_cidr
  aks_docker_bridge_cidr      = var.aks_docker_bridge_cidr
  aks_network_policy          = var.aks_network_policy

  aks_identity_type           = var.aks_identity_type

  node_pool_name              = var.node_pool_name
  node_os_sku                 = var.node_os_sku
  node_vm_size                = var.node_vm_size
  node_enable_auto_scaling    = var.node_enable_auto_scaling
  node_count                  = var.node_count
  node_min_count              = var.node_min_count
  node_max_count              = var.node_max_count
  node_max_pods               = var.node_max_pods
}

module "Nodepool" {
  source = "./modules/Nodepool"
  # add variables here
  
  Indium_AKS_id = module.AKS.AKScluster_id
  subnet2_id = module.Subnet.subnet2_id

  aks_node_pool_name              = var.aks_node_pool_name
  aks_node_pool_mode              = var.aks_node_pool_mode
  aks_node_pool_os_sku            = var.aks_node_pool_os_sku
  aks_node_pool_vm_size           = var.aks_node_pool_vm_size
  aks_node_pool_enable_auto_scaling = var.aks_node_pool_enable_auto_scaling
  aks_node_pool_node_count        = var.aks_node_pool_node_count
  aks_node_pool_min_count         = var.aks_node_pool_min_count
  aks_node_pool_max_count         = var.aks_node_pool_max_count
  aks_node_pool_max_pods          = var.aks_node_pool_max_pods
  aks_node_pool_tags              = var.aks_node_pool_tags
  }