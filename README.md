# DevOpsBootcamp


Instalar terraform
https://developer.hashicorp.com/terraform/downloads

Instalar azure cli
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


###Comandos para interactuar con el state


Listar los recursos en el state
```console
terraform state list
```

Eliminar un recurso para dejar de administrarlo en terraform, el recurso sigue existiendo en el proveedor de nube, pero será invisible para terraform.
```console
terraform state rm $NOMBREDELRECURSO 
terraform state rm azurerm_service_plan.drift
```
Importar un recurso en terraform. Se usa cuando un recurso fue creado manualmente o por otra herramienta y queremos empezar a administrarlo en terraform 
```console
terraform  import $nombredelrecurso $iddelrecursoenelproveedor

terraform  import -var-file="envdev.auto.tfvars" azurerm_service_plan.drift /subscriptions/a4924200-2523-46cf-a092-0479ad3fe852/resourceGroups/ccbootcamp/providers/Microsoft.Web/serverfarms/ASP-ccbootcamp-b3d8
```

Referencias:

Lifecycle terraform:
https://developer.hashicorp.com/terraform/tutorials/state/resource-lifecycle?utm_source=WEBSITE&utm_medium=WEB_IO&utm_offer=ARTICLE_PAGE&utm_content=DOCS


Manejar los Drift:
https://www.hashicorp.com/blog/detecting-and-managing-drift-with-terraform
