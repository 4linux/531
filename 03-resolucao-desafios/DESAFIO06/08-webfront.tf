resource "google_compute_instance" "webfront" {
  name         = "webfront"
  machine_type = "e2-micro"
  zone         = var.vm_zones_br[0]

  tags = ["webapp"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnets[1].self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file(var.front_provision_script)

  depends_on = [
    google_compute_instance.vm-modelo-us,
    google_compute_instance.vm-modelo-br
  ]
}