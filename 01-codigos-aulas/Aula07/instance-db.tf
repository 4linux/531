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
    source = google_compute_disk.db-disk.self_link
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link
  }
}