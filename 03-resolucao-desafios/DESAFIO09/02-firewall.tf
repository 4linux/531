resource "google_compute_firewall" "allow-default-ports" {
  name    = format("%s-allow-default-ports", local.vpc_name)
  network = module.vpc.network_self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
}