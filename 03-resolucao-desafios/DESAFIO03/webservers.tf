resource "google_compute_instance" "web1" {
  name         = "web2"
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

  metadata_startup_script = "sudo apt update; sudo apt-get install nginx -y"

  depends_on = [
    google_compute_instance.dbserver1
  ]
}

resource "google_compute_instance" "web2" {
  name         = "web2"
  machine_type = "e2-micro"
  zone         = "southamerica-east1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet2.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "sudo apt update; sudo apt-get install nginx -y"

  depends_on = [
    google_compute_instance.dbserver1
  ]
}