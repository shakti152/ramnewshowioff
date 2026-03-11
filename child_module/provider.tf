terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.61.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e150af1d-b072-4a73-bd6f-bff505b3b2a6"
}
