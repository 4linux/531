/* resource "google_compute_firewall" "fw-lab01" {
  name    = "fw-lab01"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
} */