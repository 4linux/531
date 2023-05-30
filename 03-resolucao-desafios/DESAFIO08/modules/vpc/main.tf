resource "google_compute_network" "vpc_module" {
  name        = var.vpc_name
  description = var.vpc_description
  project     = var.vpc_project

  auto_create_subnetworks = var.auto_create_subnetworks
}

resource "google_compute_firewall" "allow_icmp_default" {
  name = format("%s-allow-icmp-default", var.vpc_name)

  network = google_compute_network.vpc_module.self_link

  project     = var.vpc_project

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}