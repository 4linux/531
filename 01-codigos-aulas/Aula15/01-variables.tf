variable "vpc_name" {
  type = string
  default = "vpc-projeto"
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "back_provision_script" {
  default     = "./scripts/prov-back.sh"
  type        = string
  description = "Caminho para o script de provisionamento"
}

variable "default_subnet_regions" {
  type        = list(string)
  description = "Regioes padroes a serem criadas as subnets"
  default     = ["us-central1", "southamerica-east1","us-east1"]
}

variable "default_group_sizes" {
  type        = list(number)
  description = "Regioes padroes a serem criadas as subnets"
  default     = [0, 0, 2]
}