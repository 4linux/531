resource "google_compute_instance" "db" {
  name         = "db"
  machine_type = "e2-small"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  attached_disk {
    source = "db-disk"
  }

  network_interface {
    subnetwork = "subnet1"
  }
}