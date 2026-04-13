# Configuración de Terraform y AWS en Windows 🚀

Este repositorio contiene los pasos necesarios para configurar un entorno de Infraestructura como Código (IaC) utilizando Terraform y conectarlo con Amazon Web Services (AWS).

## 1. Instalación de Herramientas 🛠️

### Terraform
1. Descarga el binario de [Terraform para Windows](https://terraform.io).
2. Extrae el archivo `terraform.exe` en `C:\terraform`.
3. Agrega `C:\terraform` a tus **Variables de Entorno (Path)** del sistema.
4. Verifica la instalación en una terminal:
   
   ```bash
   terraform -version



# 1. Inicializar el directorio (descarga proveedores)
terraform init

# 2. Previsualizar los cambios
terraform plan

# 3. Aplicar los cambios en AWS
terraform apply



# S3 bucket Terraform template

This folder contains a minimal Terraform template to create an Amazon S3 bucket with sensible defaults: versioning toggle, server-side encryption, and public access block.

Quick usage (PowerShell):

1. Copy the example variables file and set a unique bucket name:

```powershell
cp .\terraform.tfvars.example .\terraform.tfvars
# Edit terraform.tfvars and set bucket_name to a globally unique value
```

2. Initialize and apply:

```powershell
terraform init
terraform plan -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars
```

Notes:
- S3 bucket names must be globally unique across all AWS accounts.
- By default public access is blocked (`block_public = true`). Set to `false` only if you understand the implications.
- The template enables server-side encryption (AES256) by default.

Customizing:
- Change `versioning_enabled`, `force_destroy`, and `sse_algorithm` in `terraform.tfvars`.
- Add `tags` as a map in `terraform.tfvars`.
