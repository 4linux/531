// variaveis da parte 1 (rede)
variable "rede_gerenciada" {
  type    = bool
  default = "false"
}

variable "vpc_name" {
  type    = string
  default = "tf-vpc-lab"
}

variable "subnet_prefix" {
  type    = string
  default = "subnet"
}

variable "subnets_region" {
  type        = list(any)
  description = "Regioes padroes a serem criadas as subnets"
  default     = ["us-east1", "southamerica-east1"]
}

variable "subnets_cidr" {
  type    = list(any)
  default = ["192.168.10.0/24", "192.168.20.0/24"]
}

// variaveis da parte 2 (processamento)

variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "provison_backend_path" {
  type    = string
  default = "./scripts/prov-back.sh"
}

variable "front_provision_script" {
  default     = "./scripts/prov-front.sh"
  type        = string
  description = "Caminho para o script de provisionamento"
}

variable "vm_names_us" {
  type        = list(any)
  description = "Nome da VMS"
  default     = ["webback1", "webback2"]
}

variable "vm_zones_us" {
  type        = list(any)
  description = "Zonas da VMS"
  default     = ["us-east1-b", "us-east1-c"]
}

variable "vm_names_br" {
  type        = list(any)
  description = "Nome da VMS"
  default     = ["webback3", "webback4"]
}

variable "vm_zones_br" {
  type        = list(any)
  description = "Zonas da VMS"
  default     = ["southamerica-east1-a", "southamerica-east1-b"]
}