module "resource_group" {
  source = "../modules/azurerm_resource_group"

  resource_group_name     = "rg-gochu"
  resource_group_location = "centralindia"
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../modules/azurerm_virtual_network"

  virtual_network_name          = "vnet-gochu"
  resource_group_name           = "rg-gochu"
  virtual_network_location      = "centralindia"
  virtual_network_address_space = ["10.0.0.0/16"]
}

module "frontend_subnet" {
  depends_on = [module.virtual_network]
  source     = "../modules/azureram_subnet"

  subnet_name           = "frontend-subnet"
  resource_group_name   = "rg-gochu"
  virtual_network_name  = "vnet-gochu"
  subnet_address_prefixes = ["10.0.1.0/24"]
}
module "backend_subnet" {
  depends_on = [module.virtual_network]
  source     = "../modules/azureram_subnet"

  subnet_name           = "backend-subnet"
  resource_group_name   = "rg-gochu"
  virtual_network_name  = "vnet-gochu"
  subnet_address_prefixes = ["10.0.2.0/24"]
}

module "azurerm_pubilc_ip" { 
  depends_on = [module.resource_group]
  source     = "../modules/azurerm_pubilc_ip"

  azurerm_public_ip_name                = "rg-gochu-nic"
  azurerm_public_ip_location            = "centralindia"
  azurerm_public_ip_resource_group_name = "rg-gochu"
  azurerm_allocation_method             = "Static"
}

module "sql_server" {
  depends_on = [module.backend-vm]
  source     = "../modules/azurerm_sql_server"

  sql_server_name                = "gola007"
  resource_group_name            = "rg-gochu"
  location                       = "centralindia"
  administrator_login            = "raju123"
  administrator_login_password   = "Lovej!@#123"
}

module "sql_server_database" {
  depends_on = [module.sql_server]
  source     = "../modules/azurerm_sql_database"
  sql_database_name    = "tododb007"
  sql_server_id        = "/subscriptions/e150af1d-b072-4a73-bd6f-bff505b3b2a6/resourceGroups/rg-gochu/providers/Microsoft.Sql/servers/gola007"
  collation            = "SQL_Latin1_General_CP1_CI_AS"
  sku_name             = "S0"
}
module "kv" {
  depends_on = [module.sql_server_database]
  source     = "../modules/azurerm_key_vult"

  key_vault_name       = "kv-gochu"
  Location             = "centralindia"
  resource_group_name  = "rg-gochu"
  
}
