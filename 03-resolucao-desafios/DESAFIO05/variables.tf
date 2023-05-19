#definicoes de rede

variable "vpc_gerenciada" {
  type = bool
}

variable "vpc_name" {
  type    = string
  default = "tf-vpc-lab"
}

variable "subnet1_name" {
  type    = string
  default = "subnet1"
}

variable "subnet1_region" {
  type    = string
  default = "us-east1"
}

variable "subnet2_name" {
  type    = string
  default = "subnet2"
}

variable "subnet2_region" {
  type    = string
  default = "southamerica-east1"
}





#definicoes de instancias

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

variable "dbdisk_size" {
  type    = number
  default = 50
}

variable "dbserver_name" {
  type    = string
  default = "dbserver1"
}

variable "web1name" {
  type    = string
  default = "web1"
}

variable "web1zone" {
  type    = string
  default = "us-east1-c"
}

variable "web2name" {
  type    = string
  default = "web2"
}

variable "web2zone" {
  type    = string
  default = "southamerica-east1-c"
}

