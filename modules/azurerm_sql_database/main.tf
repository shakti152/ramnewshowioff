resource "azurerm_mssql_database" "sql_database" {
  name                = var.sql_database_name
  server_id              = var.sql_server_id
  collation           = var.collation
  max_size_gb         = 2
  sku_name            = var.sku_name
  }