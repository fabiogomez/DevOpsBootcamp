# DevOpsBootcamp


Install terraform
https://developer.hashicorp.com/terraform/downloads

Install azure cli
https://learn.microsoft.com/en-us/cli/azure/install-azure-cli

Login en azure portal
```console
az login
```

Seleccionar la subscription(Opcional)
```console
az account set --subscription {id_subscription}
```

Inicializar el backend
```console
terraform init
```

Validar la sintaxis
```console
terraform validate
```

Generar el plan
```console
terraform plan
```

Ejecutar el apply
```console
terraform apply
```

Uso de variables
```console
terraform plan -var-file="envdev.tfvars"
terraform plan -var="var1=xxxx"
```
