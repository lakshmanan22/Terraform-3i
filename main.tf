provider "azurerm" {
  features {}

  #  client_id       = var.client_id
  #  client_secret   = var.client_secret
  #  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

}

module "windows_vm" {
  source               = "./modules/virtual-machine"
  resource_group_name  = var.resource_group_name
  location             = var.location
  virtual_network_name = var.virtual_network_name
  subnet_name          = var.subnet_name
  nic_name             = var.nic_name
  vm_name              = var.vm_name
  admin_username       = var.admin_username
  admin_password       = var.admin_password
}
