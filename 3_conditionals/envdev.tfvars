
resource_group_name      = "ccbootcamp"
location                 = "West Europe"
service_plan_name        = "example-appserviceplan-fg28"
service_plan_tier        = "Standard"
service_plan_size        = "S1"
app_service_name         = "example-app-service-fg28"
dotnet_framework_version = "v4.0"
scm_type                 = "LocalGit"
environment              = "dev"
app_settings = {
  "SOME_KEY1" = "value",
  "SOME_KEY2" = "value2"
}
deploy_app_service = true
add_prefix         = true