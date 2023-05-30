module "rede" {
  source = "./modules/vpc"

  vpc_project = "terraform-lab-386821"

  auto_create_subnetworks = true
  vpc_name                = "vpc-example-module"
}

module "vm-teste" {
  source = "./modules/instance"

  vm_project = "terraform-lab-386821"

  vm_network = module.rede.vpc_self_link
  vm_subnet  = module.rede.vpc_name

  vm_name  = "vm-teste"
  vm_image = "debian-cloud/debian-11"
}

output "vm-teste-ip" {
  value = module.vm-teste.vm_nat_ip
}