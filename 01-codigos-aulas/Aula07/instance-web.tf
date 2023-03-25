resource "google_compute_instance" "web" {
  name         = "web"
  machine_type = "e2-small"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  depends_on = [
    google_compute_instance.db,
    google_compute_firewall.allow-default
  ]

}