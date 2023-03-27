resource "google_compute_network" "vpc-teste" {
  name = "vpc-teste"
}

resource "google_compute_network" "vpc-teste2" {
  name = "vpc-teste2"

  auto_create_subnetworks = false
}