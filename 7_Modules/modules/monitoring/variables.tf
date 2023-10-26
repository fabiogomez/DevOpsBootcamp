variable "resource_group_name" {
  type = string

}
variable "location" {
  type    = string
  default = "West Europe"

}

variable "namespace" {
  type = string
}
variable "azurerm_app_service_id" {
    type = string  
}