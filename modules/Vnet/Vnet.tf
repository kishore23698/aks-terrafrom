resource "azurerm_virtual_network" "Indium_AKS_vnet1" {
  name                = var.vnet1_name
  address_space       = var.vnet1_address_space
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  #depends_on = [
   # azurerm_resource_group.Indium_resource_grp  
  #]

  tags = var.vnet_tags
}

resource "azurerm_virtual_network" "Indium_AKS_vnet2" {
  name                = var.vnet2_name
  address_space       = var.vnet2_address_space
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  #depends_on = [
   # azurerm_resource_group.Indium_resource_grp
  #]

  tags = var.vnet_tags
}

