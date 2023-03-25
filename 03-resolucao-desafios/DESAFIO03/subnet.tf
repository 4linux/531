resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = "192.168.10.0/24"
  region        = "us-east1"
  network       = google_compute_network.tf-vpc-lab.self_link
}

resource "google_compute_subnetwork" "subnet2" {
  name          = "subnet2"
  ip_cidr_range = "192.168.20.0/24"
  region        = "southamerica-east1"
  network       = google_compute_network.tf-vpc-lab.self_link
}