resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = "10.10.0.0/22"
  region        = "us-central1"
  network       = "vpc-terraform"
}

resource "google_compute_subnetwork" "subnet2" {
  name          = "subnet2"
  ip_cidr_range = "10.10.4.0/22"
  region        = "asia-east1"
  network       = "vpc-terraform"
}