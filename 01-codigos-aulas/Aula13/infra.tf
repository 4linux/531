module "vpc" {
  source = "./modules/rede"

  auto_subnets = false

  vpc_project = "terraform-lab-386821"
  vpc_name    = "vpc-teste-modules"
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = "192.168.10.0/24"
  region        = "us-central1"
  network       = module.vpc.vpc_selflink
}