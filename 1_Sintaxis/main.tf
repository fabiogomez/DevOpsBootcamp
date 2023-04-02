terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "dobootcamp"
  location = "West Europe"
}

resource "azurerm_storage_account" "teststorage" {
  name                     = "appfg28teststorage" /*"appfg28-teststorage"*/
  resource_group_name      = "dobootcamp" #azurerm_resource_group.example.name
  location                 = "West Europe" #azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}