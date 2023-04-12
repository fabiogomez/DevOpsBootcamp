
resource_group_name     = "ccbootcamp"
location                = "West Europe"
service_plan_name       = "example-appserviceplan-fg28"
sku_name                = "P1v2"
os_type                 = "Windows"
service_plan_name_linux = "example-appserviceplan-fg28"
sku_name_linux          = "P1v2"
os_type_linux           = "Windows"
environment             = "dev"
windows_app_services = {
  "dotnet40" = {
    name                = "app1-fg281"
    minimum_tls_version = "1.2"
    dotnet_version      = "v4.0"

  }
  "dotnet30" = {
    name                = "app2-fg281"
    minimum_tls_version = "1.0"
    dotnet_version      = "v3.0"

  }
  "dotnet20" = {
    name                = "app3-fg281"
    minimum_tls_version = "1.2"
    dotnet_version      = "v2.0"

  }

}
