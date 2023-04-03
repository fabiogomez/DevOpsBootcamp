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

module "app" {
  source = "./modules/appservices"

  resource_group_name  = var.resource_group_name
  location             = var.location
  service_plan_name    = var.service_plan_name
  sku_name             = var.sku_name
  os_type              = var.os_type
  environment          = var.environment
  windows_app_services = var.windows_app_services

}