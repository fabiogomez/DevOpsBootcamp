# DevOpsBootcamp


Install terraform
https://developer.hashicorp.com/terraform/downloads

Install azure cli
https://learn.microsoft.com/en-us/cli/azure/install-azure-cli

Login en azure portal
az login

Seleccionar la subscription(Opcional)
az account set --subscription {id_subscription}

Inicializar el backend
terraform init

Validar la sintaxis
terraform validate

Generar el plan
terraform plan

Ejecutar el apply
terraform apply

Uso de variables
terraform plan -var-file="envdev.tfvars"
terraform plan -var="var1=xxxx"
