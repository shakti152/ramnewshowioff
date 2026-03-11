resource "azurerm_public_ip" "nic" {
  name                = var.azurerm_public_ip_name
  location            = var.azurerm_public_ip_location
  resource_group_name = var.azurerm_public_ip_resource_group_name
  allocation_method   = var.azurerm_allocation_method   
}