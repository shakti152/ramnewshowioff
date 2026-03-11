variable "nic_name" {
  description = "The name of the name"
  type        = string
}

variable "location" {
  description = "The location of the location"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "size" {
  description = "The size of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  type        = string
}

variable "image_publisher" {
  description = "The publisher of the image"
  type        = string
}

variable "image_offer" {
  description = "The offer of the image"
  type        = string
}

variable "image_sku" {
  description = "The SKU of the image"
  type        = string
}

variable "image_version" {
  description = "The version of the image"
  type        = string
}
variable "frontend_ip_name" {
  description = "The name of the Public IP Address to associate with the Network Interface."
  type        = string
}
variable "frontend_subnet_name" {
  description = "The name of the Azure subnet"
  type        = string
}
variable "vinet_name" {
  description = "The name of the Azure virtual network"
  type        = string
}
variable "pip_name" {
  description = "The name of the Azure public IP address"
  type        = string
}