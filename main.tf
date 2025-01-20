provider "aws" {
  region                      = "us-east-1"

  # Utiliser des variables pour les clés d'accès (meilleure pratique)
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key

  # Désactiver les validations pour un environnement local (LocalStack)
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  s3_force_path_style         = true

  # Configurer les points de terminaison pour LocalStack
  endpoints {
    s3       = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
    ec2      = "http://localhost:4566"
  }
}

# Définir les variables pour les clés d'accès AWS
variable "aws_access_key" {
  default = "test" # Valeur par défaut pour LocalStack
}

variable "aws_secret_key" {
  default = "test" # Valeur par défaut pour LocalStack
}
