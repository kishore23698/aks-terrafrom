variable "aks_node_pool_name" {
  description = "The name of the AKS node pool"
  type        = string
}

variable "aks_node_pool_mode" {
  description = "The mode of the AKS node pool (user/system)"
  type        = string
}

variable "aks_node_pool_os_sku" {
  description = "The OS SKU for the AKS node pool"
  type        = string
}

variable "aks_node_pool_vm_size" {
  description = "The VM size for the AKS node pool"
  type        = string
}

variable "aks_node_pool_enable_auto_scaling" {
  description = "Enable auto-scaling for the AKS node pool"
  type        = bool
}

variable "aks_node_pool_node_count" {
  description = "The initial node count for the AKS node pool"
  type        = number
}

variable "aks_node_pool_min_count" {
  description = "The minimum node count for the AKS node pool"
  type        = number
}

variable "aks_node_pool_max_count" {
  description = "The maximum node count for the AKS node pool"
  type        = number
}

variable "aks_node_pool_max_pods" {
  description = "The maximum number of pods per node for the AKS node pool"
  type        = number
}

variable "aks_node_pool_tags" {
  description = "Additional tags for the AKS node pool"
  type        = map(string)
}

variable "Indium_AKS_id" {
  description = "The VM size for the AKS node pool"
  type        = string
}

variable "subnet2_id" {
  description = "The VM size for the AKS node pool"
  type        = string
}