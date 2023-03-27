resource "google_compute_firewall" "allow-http-lab04" {
  name    = "allow-http-lab04"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}