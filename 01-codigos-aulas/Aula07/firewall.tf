resource "google_compute_firewall" "allow-default" {
  name    = "allow-default"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","80"]
  }

  source_ranges = ["0.0.0.0/0"]
}