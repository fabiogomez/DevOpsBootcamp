terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
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

data "azurerm_key_vault" "example" {
  name                = "mykeyvault"
  resource_group_name = "some-resource-group"
}


output "vault_uri" {
  value = data.azurerm_key_vault.example.vault_uri
}

resource "azurerm_storage_account" "teststorage" {
  name                     = "appfg28teststoragee" /*"appfg28-teststorage"*/
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  keyvaulr_uri = data.azurerm_key_vault.example.vault_uri

  tags = {
    environment = "dev"
  }
}
