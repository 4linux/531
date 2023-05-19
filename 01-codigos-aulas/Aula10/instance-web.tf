resource "google_compute_instance" "web" {
  name         = var.web_vm_name
  machine_type = var.default_vm_size
  zone         = var.web_vm_zone

  boot_disk {
    initialize_params {
      image = var.default_vm_image
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

  metadata_startup_script = file(var.web_provision_script)

}