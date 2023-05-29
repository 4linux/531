resource "google_compute_instance" "vm-modelo-us" {

  count = length(var.vm_names_us)

  name = var.vm_names_us[count.index]
  zone = var.vm_zones_us[count.index]

  machine_type = var.default_machine_type

  tags = ["webapp"]

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnets[0].self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file(var.provison_backend_path)

  metadata = { VmDnsSetting = "GlobalDefault" }
}