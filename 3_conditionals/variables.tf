variable "resource_group_name" {
  type = string

}
variable "location" {
  type    = string
  default = "West Europe"

}
variable "service_plan_name" {
  type = string
}
variable "service_plan_tier" {
  type = string
}
variable "service_plan_size" {
  type = string

}
variable "app_service_name" {
  type = string
}
variable "dotnet_framework_version" {
  type = string
}
variable "scm_type" {
  type = string
}
variable "environment" {
  type = string
}

variable "app_settings" {
  type = map(any)
}

variable "add_prefix" {
  type = bool
}

variable "deploy_app_service" {
  type = bool
}



