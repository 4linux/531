resource "google_compute_firewall" "allow-default-ports" {
  name    = "allow-ssh"
  network = google_compute_network.tf-vpc-lab.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["webapp"]
}