variable "nic_name" {
  description = "The name of the Network Interface"
  type        = string
}

variable "location" {
  description = "The Azure region where the Network Interface will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the Subnet to attach the NIC to"
  type        = string
}

variable "ip_config_name" {
  description = "The name of the IP configuration"
  type        = string
  default     = "internal"
}

variable "private_ip_address_allocation" {
  description = "The allocation method for the private IP address"
  type        = string
  default     = "Dynamic"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
