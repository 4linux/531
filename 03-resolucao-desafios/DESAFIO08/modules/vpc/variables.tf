variable "auto_create_subnetworks" {
  description = "Definie se devem ser criadas subnets automaticamente"
  type        = bool
}

variable "vpc_project" {
  description = "Projeto da GCP onde a rede sera criada"
  type        = string
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "vpc-module"
}

variable "vpc_description" {
  description = "Descricao da finalidade da VPC"
  type        = string
  default     = "vpc de exemplo de modulos"
}