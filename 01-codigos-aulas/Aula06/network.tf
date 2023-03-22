resource "google_compute_network" "vpc_network" {
  name = "vpc-terraform"

  auto_create_subnetworks = false
}