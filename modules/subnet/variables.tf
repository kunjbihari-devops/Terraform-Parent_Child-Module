variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes to use for the Subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
