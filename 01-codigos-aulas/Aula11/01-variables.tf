### variaveis de rede

variable "auto_create_subnets" {
  description = "Define se a subnets devem ser criadas automaticamente"
  type        = bool
}

variable "vpc_name" {
  description = "Nome da vpc"
  type        = string
  default     = "terraform"
}

variable "subnet_name" {
  description = "Nome para a subnet"
  type        = string
  default     = "subnet1"
}

variable "subnet_region" {
  description = "Região para a subnet"
  type        = string
  default     = "us-central1"
}

variable "subnet_cidr" {
  description = "Range CIDR para a subnet"
  type        = string
  default     = "10.10.0.0/22"
}

### variaveis de processamento

variable "default_vm_image" {
  description = "Sistema operacional das vms"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "default_vm_size" {
  description = "Tamanho padrão das vms"
  type        = string
  default     = "e2-small"
}

variable "db_disk_name" {
  description = "Nome do disco de dados"
  type        = string
  default     = "db-data"
}

variable "db_vm_name" {
  description = "Nome para o db server"
  type        = string
  default     = "db-server"
}

variable "web_vm_name" {
  description = "Nome para a vm web"
  type        = string
  default     = "web1"
}

variable "web_vm_zone" {
  description = "Nome para a vm web"
  type        = string
  default     = "us-central1-c"
}

variable "web_provision_command" {
  default = "apt update; apt install -y nginx"
}

variable "web_provision_script" {
  default = "./scripts/prov-back.sh"
}