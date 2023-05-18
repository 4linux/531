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
  description = "Sistema operacional das vms"
  type        = string
  default     = "e2-small"
}

variable "db_vm_name" {
  description = "Sistema operacional das vms"
  type        = string
  default     = "db-server"
}

variable "db_disk_name" {
  description = "Nome do disco de dados"
  type        = string
  default     = "db-data"
}

variable "db_disk_type" {
  description = "Nome do disco de dados"
  type        = string
  default     = "pd-standard"
}

variable "db_disk_size" {
  description = "Tamanho do disco de dados"
  type        = number
  default     = 30

  validation {
    condition     = var.db_disk_size <= 50
    error_message = "Tamanho máximo do disco de dados é de 50GB"
  }
}