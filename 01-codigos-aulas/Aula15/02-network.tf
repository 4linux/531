resource "google_compute_network" "vpc_projeto" {

  name = var.vpc_name
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "allow-default-ports" {
  name    = format("%s-allow-default-ports", var.vpc_name)
  
  network = google_compute_network.vpc_projeto.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80","443"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["webapps"]
}