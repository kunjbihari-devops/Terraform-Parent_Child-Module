output "resource_group_name" {
  description = "The name of the Resource Group"
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "The ID of the Resource Group"
  value       = module.resource_group.resource_group_id
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = module.vnet.vnet_name
}

output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = module.vnet.vnet_id
}

output "subnet_name" {
  description = "The name of the Subnet"
  value       = module.subnet.subnet_name
}

output "subnet_id" {
  description = "The ID of the Subnet"
  value       = module.subnet.subnet_id
}

output "nic_name" {
  description = "The name of the Network Interface"
  value       = module.nic.nic_name
}

output "nic_id" {
  description = "The ID of the Network Interface"
  value       = module.nic.nic_id
}

output "nic_private_ip" {
  description = "The private IP address assigned to the NIC"
  value       = module.nic.nic_private_ip_address
}
