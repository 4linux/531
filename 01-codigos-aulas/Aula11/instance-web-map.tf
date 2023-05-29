resource "google_compute_instance" "web_map" {

  for_each = var.webs_defs_nome_zona

  name = each.key
  zone = each.value

  machine_type = var.default_vm_size

  boot_disk {
    initialize_params {
      image = var.web1_defs["vm_image"]
    }
  }

  network_interface {
    network = data.google_compute_network.terraform_lab_aula11.self_link

    access_config {
      // Ephemeral public IP
    }
  }
}