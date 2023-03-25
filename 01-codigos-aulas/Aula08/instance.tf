resource "google_compute_instance" "vm" {
  name         = "vm"
  machine_type = "e2-small"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "apt update; apt install -y nginx"
}