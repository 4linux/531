variable "vpc_name" {
  type    = string
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

variable "group_regions" {
  type        = list(string)
  description = "Regioes padroes a serem criadas as subnets"
  default     = ["us-central1", "asia-east1"]
}

variable "lb_group_sizes" {
  type        = list(number)
  description = "Regioes padroes a serem criadas as subnets"
  default     = [0, 2]
}

variable "us_zones" {
  type        = list(string)
  description = "Zonas onde as instancias serão provisionadas"
  default     = ["us-central1-a", "us-central1-b"]
}