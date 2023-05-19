resource "google_compute_instance" "web1" {
  name         = var.web1name
  machine_type = var.default_machine_type
  zone         = var.web1zone

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file(var.provison_backend_path)

  depends_on = [
    google_compute_instance.dbserver1
  ]
}

resource "google_compute_instance" "web2" {
  name         = var.web2name
  machine_type = var.default_machine_type
  zone         = var.web2zone

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet2.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file(var.provison_backend_path)

  depends_on = [
    google_compute_instance.dbserver1
  ]
}