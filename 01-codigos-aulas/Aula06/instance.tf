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
    network = "vpc-terraform"

    access_config {
      // Ephemeral public IP
    }
  }
}