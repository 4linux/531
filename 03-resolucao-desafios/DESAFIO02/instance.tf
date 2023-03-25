resource "google_compute_instance" "instance-lab02" {
  name         = "instance-lab02"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "vpc-lab02"

    access_config {
      // Ephemeral public IP
    }
  }
}