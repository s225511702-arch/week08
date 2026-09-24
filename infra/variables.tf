variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "australiaeast"
}

variable "resource_group_name" {
  description = "Name of the resource group holding all Week08 resources"
  type        = string
  default     = "koalatech-week08-rg"
}

variable "acr_name" {
  description = "Globally unique name for the Azure Container Registry"
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9]{5,50}$", var.acr_name))
    error_message = "ACR name must be 5-50 alphanumeric characters, globally unique across Azure."
  }
}

variable "storage_account_name" {
  description = "Globally unique name for the Storage Account"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account name must be 3-24 lowercase letters/numbers, globally unique across Azure."
  }
}

variable "aks_cluster_name" {
  description = "Name for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of AKS worker nodes"
  type        = number
  default     = 3
}

variable "node_size" {
  description = "VM size for AKS worker nodes"
  type        = string
  default     = "Standard_D2s_v3"
}
