variable "vnet1_name" {
  description = "The name of the first Azure Virtual Network"
  type        = string
}

variable "vnet1_address_space" {
  description = "The address space for the first Azure Virtual Network"
  type        = list(string)
}

variable "vnet2_name" {
  description = "The name of the second Azure Virtual Network"
  type        = string
}

variable "vnet2_address_space" {
  description = "The address space for the second Azure Virtual Network"
  type        = list(string)
}

variable "vnet_tags" {
  description = "Tags for the Azure Virtual Networks"
  type        = map(string)
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "resource_group_location" {
  description = "The location for the Azure Resource Group"
  type        = string
}