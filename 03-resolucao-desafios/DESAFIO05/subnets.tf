resource "google_compute_subnetwork" "subnet1" {
  name          = var.subnet1_name
  ip_cidr_range = "192.168.10.0/24"
  region        = var.subnet1_region
  network       = google_compute_network.tf-vpc-lab.self_link
}

resource "google_compute_subnetwork" "subnet2" {
  name          = var.subnet2_name
  ip_cidr_range = "192.168.20.0/24"
  region        = var.subnet2_region
  network       = google_compute_network.tf-vpc-lab.self_link
}