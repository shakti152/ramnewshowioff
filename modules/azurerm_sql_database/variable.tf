variable "sql_server_id" {
  description = "The ID of the SQL Server to create the database in."
  type        = string
  
}
variable "sql_database_name" {
  description = "The name of the SQL Database to create."
  type        = string
}
variable "collation" {
  description = "The collation of the SQL Database to create."
  type        = string
}
variable "sku_name" {
  description = "The SKU name of the SQL Database to create."
  type        = string
}