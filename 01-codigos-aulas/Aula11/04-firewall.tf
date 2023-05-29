resource "google_compute_firewall" "allow-default" {
  name    = "allow-default"
  network = data.google_compute_network.terraform_lab_aula11.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
}