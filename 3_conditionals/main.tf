terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }
}

locals {
    prefix = "prex-"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_app_service_plan" "example" {  
  name                = var.add_prefix ? format("%s%s",local.prefix,var.service_plan_name): var.service_plan_name 
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = var.service_plan_tier
    size = var.service_plan_size
  }

  tags = {
    environment = var.environment
  }
}

resource "azurerm_app_service" "example" {
  count = var.deploy_app_service ? 1 : 0
  name                = var.app_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = var.dotnet_framework_version
    scm_type                 = var.scm_type
  }

  app_settings = var.app_settings

  
}