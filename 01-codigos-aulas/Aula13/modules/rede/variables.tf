variable "auto_subnets" {
  description = "Usada para definir se as subnets devem ser criadas automaticamente"
  type        = bool
}

variable "vpc_project" {
  description = "Define o nome do projeto onde a vpc será criada"
  type        = string
}

variable "vpc_name" {
  description = "Define o nome da VPC"
  type        = string
  default     = "vpc-terraform"
}