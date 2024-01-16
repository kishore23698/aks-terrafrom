variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "aks_sku_tier" {
  description = "AKS pricing tier"
  type        = string
}

variable "aks_kubernetes_version" {
  description = "The version of Kubernetes to use for the AKS cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "aks_automatic_channel_upgrade" {
  description = "The upgrade channel for this Kubernetes Cluster"
  type        = string
}

variable "aks_network_plugin" {
  description = "Network plugin to use for networking"
  type        = string
}

variable "aks_dns_service_ip" {
  description = "The DNS service IP for the AKS cluster"
  type        = string
}

variable "aks_service_cidr" {
  description = "The service CIDR for the AKS cluster"
  type        = string
}

variable "aks_docker_bridge_cidr" {
  description = "The Docker bridge CIDR for the AKS cluster"
  type        = string
}

variable "aks_network_policy" {
  description = "Network policy to use for the AKS cluster"
  type        = string
}

variable "aks_identity_type" {
  description = "The type of identity to assign to the AKS cluster"
  type        = string
}

variable "node_pool_name" {
  description = "The name of the default node pool"
  type        = string
}

variable "node_os_sku" {
  description = "The OS SKU for the default node pool"
  type        = string
}

variable "node_vm_size" {
  description = "The VM size for the default node pool"
  type        = string
}

variable "node_enable_auto_scaling" {
  description = "Enable auto-scaling for the default node pool"
  type        = bool
}

variable "node_count" {
  description = "The initial node count for the default node pool"
  type        = number
}

variable "node_min_count" {
  description = "The minimum node count for the default node pool"
  type        = number
}

variable "node_max_count" {
  description = "The maximum node count for the default node pool"
  type        = number
}

variable "node_max_pods" {
  description = "The maximum number of pods per node for the default node pool"
  type        = number
}

variable "resource_group_name" {
  description = "The DNS service IP for the AKS cluster"
  type        = string
}

variable "resource_group_location" {
  description = "The service CIDR for the AKS cluster"
  type        = string
}

variable "subnet1_id" {
  description = "The service CIDR for the AKS cluster"
  type        = string
}