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
```
Esta carpeta contiene una plantilla mínima de Terraform para crear un bucket de Amazon S3 con configuraciones predeterminadas adecuadas: control de versiones, cifrado del lado del servidor y bloqueo de acceso público.

Uso rápido (PowerShell):

# Usando S3 bucket terraform templete
# Copie el archivo de variables de ejemplo y establezca un nombre de bucket único:

```powershell
cp .\terraform.tfvars.example .\terraform.tfvars
```

# Inicializar el directorio

```bash
   terraform init
```

# Previsualizar los cambios

```bash
   terraform plan
```

# 3. Aplicar los cambios en AWS

```bash
   terraform apply
```

# Notas:
   - Los nombres de los buckets de S3 deben ser únicos a nivel global en todas las cuentas de AWS.
   - Por defecto, el acceso público está bloqueado (`block_public = true`). Establézcalo en `false` solo si comprende las implicaciones.
   - La plantilla habilita el cifrado del lado del servidor (AES256) por defecto.

# Personalización:
   - Modifique `versioning_enabled`, `force_destroy` y `sse_algorithm` en `terraform.tfvars`.
   - Agregue `tags` como un mapa en `terraform.tfvars`.
