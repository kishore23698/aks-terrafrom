resource "azurerm_subnet" "Indium_AKS_subnet1" {
  name                 = var.subnet1_name
  address_prefixes     = var.subnet1_address_prefixes
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet1_name

  #depends_on = [
   # azurerm_virtual_network.Indium_AKS_vnet1
  #]
}

resource "azurerm_subnet" "Indium_AKS_subnet2" {
  name                 = var.subnet2_name
  address_prefixes     = var.subnet2_address_prefixes
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet1_name

  #depends_on = [
   # azurerm_virtual_network.Indium_AKS_vnet1
  #]
}

