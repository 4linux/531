resource "google_compute_instance" "db" {
  name         = var.db_vm_name
  machine_type = var.default_vm_size
  zone         = data.google_compute_disk.db_disk.zone

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  attached_disk {
    source = data.google_compute_disk.db_disk.self_link
  }

  network_interface {
    network = data.google_compute_network.terraform_lab_aula11.self_link

    access_config {
      // Ephemeral public IP
    }
  }
}