subscription_id         = "5cb53f87-9c8f-4093-8695-f613ed52a062"
location                = "centralindia"
resource_group_name     = "rg-devops-centralindia"
vnet_name               = "vnet-devops-centralindia"
vnet_address_space      = ["10.0.0.0/16"]
subnet_name             = "snet-devops-centralindia"
subnet_address_prefixes = ["10.0.1.0/24"]
nic_name                = "nic-devops-centralindia"
tags = {
  Environment = "Practice"
  ManagedBy   = "Terraform"
  Location    = "Central India"
}
