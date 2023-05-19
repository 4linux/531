resource "google_compute_instance" "dbserver1" {
  name         = var.dbserver_name
  machine_type = var.default_machine_type
  zone         = local.db_zone

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  tags = ["allow-ssh"]

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