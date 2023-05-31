locals {
  vpc_name = "example-module-vpc"
}

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "7.0.0"

  network_name = local.vpc_name
  project_id   = "terraform-lab-386821"

  subnets = [
    {
      subnet_name   = local.vpc_name
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "us-central1"
    },
    {
      subnet_name   = local.vpc_name
      subnet_ip     = "10.10.20.0/24"
      subnet_region = "us-east1"
    },
  ]
}

output "vpc_self_links" {
  value = module.vpc.network_self_link
}

output "subnets_self_links" {
  value = module.vpc.subnets_self_links
}