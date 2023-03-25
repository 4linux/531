resource "google_compute_firewall" "allow-default-ports" {
  name    = "allow-default-ports"
  network = "vpc-lab02"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}