variable "vm_network" {
  type        = string
  description = "rede onde a vm deve ser provisionada"
}

variable "vm_subnet" {
  type        = string
  description = "rede onde a vm deve ser provisionada"
}

variable "vm_project" {
  type        = string
  description = "Projeto onde a vm deve ser provisionada"
}

variable "vm_name" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um nome de resource"
  default     = "vm-linux"
}

variable "vm_machine_type" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um tamanho de máquina para o Google Cloud Platform"
  default     = "e2-micro"
}

variable "vm_image" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um nome de resource"
  default     = "debian-cloud/debian-10"
}

variable "vm_zone" {
  type        = string
  description = "Em qual zona sua instância irá ficar"
  default     = "us-central1-c"
}