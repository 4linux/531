resource "google_compute_instance" "web" {

  name         = format("%s-%s-%s", var.web_vm_name, data.google_compute_network.terraform_lab_aula11.name, var.web_vm_zone)
  machine_type = var.default_vm_size
  zone         = var.web_vm_zone

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  network_interface {
    network = data.google_compute_network.terraform_lab_aula11.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  depends_on = [
    google_compute_instance.db
  ]

  metadata_startup_script = file(var.web_provision_script)
}