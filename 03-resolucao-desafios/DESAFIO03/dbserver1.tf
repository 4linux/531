resource "google_compute_instance" "dbserver1" {
  name         = "dbserver1"
  machine_type = "e2-micro"
  zone         = google_compute_disk.dados.zone

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

  attached_disk {
    source = google_compute_disk.dados.self_link
  }

}