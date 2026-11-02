variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "5cb53f87-9c8f-4093-8695-f613ed52a062"
}

variable "location" {
  description = "Azure Region for resources"
  type        = string
  default     = "centralindia"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-devops-centralindia"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-devops-centralindia"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "snet-devops-centralindia"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nic_name" {
  description = "Name of the network interface"
  type        = string
  default     = "nic-devops-centralindia"
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default = {
    Environment = "Practice"
    ManagedBy   = "Terraform"
    Location    = "Central India"
  }
}
