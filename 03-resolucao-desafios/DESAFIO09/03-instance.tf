module "vm1" {

  source = "github.com/4linux/531//03-resolucao-desafios/DESAFIO08/modules/instance"

  vm_project = "terraform-lab-386821"

  vm_name  = "vm1"
  vm_image = "debian-cloud/debian-11"
  vm_zone  = "us-central1-a"

  vm_network = module.vpc.network_self_link
  vm_subnet  = module.vpc.network_name

  depends_on = [module.vpc]
}

output "vm_public_ip" {
  value = module.vm1.vm_nat_ip
}