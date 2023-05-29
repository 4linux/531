resource "google_compute_instance" "web-vm-set" {

  for_each = var.vm_name_set

  name = each.key
  zone = var.web_vm_zones[0]

  machine_type = var.default_vm_size

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  network_interface {
    network = data.google_compute_network.terraform_lab_aula11.self_link
    access_config {

    }
  }

  allow_stopping_for_update = true
}