### variaveis de rede

variable "auto_create_subnets" {
  description = "Define se a subnets devem ser criadas automaticamente"
  type        = bool
  default     = true
}

variable "vpc_name" {
  description = "Nome da vpc"
  type        = string
  default     = "terraform-lab-aula11"
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

### variaveis de processamento - web

variable "web_provision_command" {
  default = "apt update; apt install -y nginx"
}

variable "web_provision_script" {
  default = "./scripts/prov-back.sh"
}

variable "qtd_instancias" {
  description = "Quantidade de vms a serem criadas"
  type        = number
  default     = 2
}

variable "web_vm_name" {
  description = "Nome para a vm web"
  type        = string
  default     = "web"
}

variable "web_vm_zone" {
  description = "Nome para a vm web"
  type        = string
  default     = "us-central1-c"
}

variable "web_vm_names" {
  type    = list(string)
  default = ["web1", "web2", "web3"]
}

variable "web_vm_zones" {
  description = "Nome para a vm web"
  type        = list(string)
  default     = ["us-central1-c", "southamerica-east1-c", "southamerica-east1-b"]
}

// exemplo de set

variable "vm_name_set" {
  type    = set(any)
  default = ["vm9", "vm5", "vm7", "vm9", "vm4", "vm5"]
}

// exemplos de map

variable "web1_defs" {
  type        = map(string)
  description = "Definicao das VMs"
  default = {
    vm_name  = "web1map"
    vm_zone  = "us-east1-b"
    vm_image = "debian-cloud/debian-11"
  }
}

variable "webs_defs_nome_zona" {
  type        = map(string)
  description = "Definicao das VMs"
  default = {
    web1map = "us-central1-c"
    web2map = "southamerica-east1-c"
    web3map = "southamerica-east1-b"
  }
}

// exemplos de tupla

variable "tuple" {
  type    = tuple([number, string, string, bool])
  default = [3, "elementos", "diferentes", true]
}

variable "tuple_disk" {
  type    = tuple([string, string, string, number])
  default = ["tuple-data-disk", "pd-balanced", "us-central1-b", 40]
}

// exemplos de objeto

variable "object" {
  type = object({
    name   = string
    region = string
    amount = number
    tags   = list(string)
  })
  default = { name = "Alfa", region = "southamerica-east1", amount = 5, tags = ["prod", "terraform"] }
}

variable "disk_object" {
  type = object({
    diskName = string
    diskType = string
    diskZone = string
    diskSize = number
  })
  default = {
    diskName = "object-data-disk"
    diskType = "pd-balanced"
    diskZone = "us-east1-c"
    diskSize = 40
  }
}
