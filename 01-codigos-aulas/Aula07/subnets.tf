resource "google_compute_subnetwork" "subnet1" {
  name          = google_compute_network.vpc_network.name
  ip_cidr_range = "10.10.0.0/22"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.self_link
}

resource "google_compute_subnetwork" "subnet2" {
  name          = google_compute_network.vpc_network.name
  ip_cidr_range = "10.10.4.0/22"
  region        = "asia-east1"
  network       = google_compute_network.vpc_network.self_link
}