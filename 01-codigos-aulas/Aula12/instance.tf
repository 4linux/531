resource "google_compute_instance" "web" {

  count = terraform.workspace == "prod" ? 3 : 1

  name         = format("web-%s-%s", count.index, terraform.workspace)
  machine_type = var.vm_size[terraform.workspace]
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

}