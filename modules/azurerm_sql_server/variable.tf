variable "sql_server_name" {
    description = "The name of the SQL server"
    type        = string
  
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "location" {
    description = "The location of the SQL server"
    type        = string
}

variable "administrator_login" {
    description = "The administrator login for the SQL server"
    type        = string
}


variable "administrator_login_password" {
    description = "The administrator login password for the SQL server"
    type        = string
}