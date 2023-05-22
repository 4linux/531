resource "google_compute_instance" "db" {
  name         = var.db_vm_name
  machine_type = var.default_vm_size
  zone         = local.db_disk_zone

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  attached_disk {
    source = google_compute_disk.db-disk.self_link
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {
      // Ephemeral public IP
    }
  }
}