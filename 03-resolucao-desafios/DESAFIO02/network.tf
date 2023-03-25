resource "google_compute_network" "vpc_lab02" {
  name = "vpc-lab02"

  auto_create_subnetworks = true
}