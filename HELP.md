# AWS EC2 + GitHub Actions

Implementación de un despliegue continuo usando las GitHub Actions junto con AWS EC2, cuya infra se desplegó localmente con Terraform.


## Authors

- [GitHub Kevin](https://www.github.com/niveeedk)
- [Portafolio Kevin](https://www.kevops.tech/)


## API Reference

#### Obtener el index con cURL/HTTPie

```bash
  curl http://ec2-107-20-61-60.compute-1.amazonaws.com
```

## Run Locally

Clone the project

```bash
git clone https://github.com/niveeek/portfolio.git
```

Go to the project directory

```bash
  cd portfolio
```

Iniciar proyecto

```bash
  terraform init
```

Ver el contenido del plan guardado
```bash
terraform show portfolio-ec2-github.plan
```

Levantar infra

```bash
  terraform apply
```

Ver Outputs
```bash
terraform outputs
```

Destruir infra
```bash
terraform destroy
```

Validcion de instancia
```bash
aws ec2 describe-instances --region us-east-1 | jq '.Reservations[].Instances[] | {PublicIpAddress, PublicDnsName, Tags, KeyName, InstanceType, State}'
```

Creacion de carpeta en instancia usnado el PublicIpAddress para SSH
```bash
mkdir -p app && ll
```
