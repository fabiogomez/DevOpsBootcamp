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


resource "azurerm_resource_group" "example" {
  name     = "example-resources2"
  location = "West Europe"
}

module "web" {
  source              = "./modules/web"
  resource_group_name = var.resource_group_name
  location            = var.location
  webappname          = var.webappname

}


module "monitoring_hola" {
  source              = "./modules/monitoring"
  resource_group_name = var.resource_group_name
  location            = var.location
  namespace           = var.namespace
  azurerm_app_service_id = module.web.app_service_plan_id

  depends_on = [ module.web ]

}
