module "rede1" {
  source = "github.com/4linux/531//03-resolucao-desafios/DESAFIO08/modules/vpc"

  vpc_project = "terraform-lab-386821"

  vpc_name                = "vpc-teste-modulo-privado"
  auto_create_subnetworks = false
}