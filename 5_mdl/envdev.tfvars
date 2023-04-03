
resource_group_name = "mdlbootcamp"
location            = "West Europe"
service_plan_name   = "example-appserviceplan-fg28"
sku_name            = "P1v2"
os_type             = "Windows"
environment         = "dev"
windows_app_services = {
  "dotnet40" = {
    name                = "app1-fg28"
    minimum_tls_version = "1.2"
    dotnet_version      = "v4.0"

  }
  "dotnet30" = {
    name                = "app2-fg28"
    minimum_tls_version = "1.1"
    dotnet_version      = "v3.0"

  }
  "dotnet20" = {
    name                = "app3-fg28"
    minimum_tls_version = "1.2"
    dotnet_version      = "v2.0"

  }

}
