module "rede2" {
  source  = "terraform-google-modules/network/google"
  version = "7.0.0"

  project_id   = "terraform-lab-386821"
  network_name = "vpc-teste-modulo-publico"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "us-west1"
    }
  ]
}

resource "google_compute_firewall" "rede2-allow-default" {
  name    = "rede2-allow-default"
  network = module.rede2.network_self_link

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}