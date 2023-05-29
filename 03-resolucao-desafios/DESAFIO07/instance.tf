resource "google_compute_instance" "vm1" {

  count = "${terraform.workspace == "prod" ? 2 : 1}"

  name = format("%s-%s-%s", var.vm_name, count.index, terraform.workspace)

  machine_type = "e2-micro"
  zone         = "us-east1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {
      // Ephemeral public IP
    }
  }

}