variable "subnet1_name" {
  description = "The name of the first Azure Subnet"
  type        = string
}

variable "subnet1_address_prefixes" {
  description = "The address prefixes for the first Azure Subnet"
  type        = list(string)
}

variable "subnet2_name" {
  description = "The name of the second Azure Subnet"
  type        = string
}

variable "subnet2_address_prefixes" {
  description = "The address prefixes for the second Azure Subnet"
  type        = list(string)
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "vnet1_name" {
  description = "The name of the first Azure Virtual Network"
  type        = string
}
