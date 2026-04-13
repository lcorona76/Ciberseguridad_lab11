## Instalar y configurar ambiente

1. Descarga terraform https://developer.hashicorp.com/terraform/downloads?product_intent=terraform
2. Creacion usuario aws
3. Providers
4. Set alias a terraform
5. Comandos init, fmt, plan, apply, destroy


Orden de variables
1. Manual
2. Default
3. Env varts TF_VAR_name
4. terraform.tfvars/.json
5. *.tfvars no cargado -var-file=
6. *.auto.tfvars or *.auto.tfvars.json
7. -var and -var-file

#docker
docker build . -t node14-class
docker run node14-class

#tryvy
output to html
trivy image --format template --template "@contrib/html.tpl" --output trivy-report.html node14-class

#Zap
https://www.zaproxy.org/download/
docker pull ghcr.io/zaproxy/zaproxy:stable
