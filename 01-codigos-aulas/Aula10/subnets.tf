resource "google_compute_subnetwork" "subnet1" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.subnet_region
  network       = google_compute_network.vpc_network.self_link
}