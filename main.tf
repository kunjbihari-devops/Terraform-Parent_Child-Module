module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  address_space       = var.vnet_address_space
  tags                = var.tags
}

module "subnet" {
  source               = "./modules/subnet"
  subnet_name          = var.subnet_name
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.vnet.vnet_name
  address_prefixes     = var.subnet_address_prefixes
}

module "nic" {
  source              = "./modules/nic"
  nic_name            = var.nic_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  subnet_id           = module.subnet.subnet_id
  tags                = var.tags
}
