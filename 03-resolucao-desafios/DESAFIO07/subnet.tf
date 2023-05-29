resource "google_compute_subnetwork" "subnet1" {

  name = format("%s-%s", var.vpc_name, terraform.workspace)

  ip_cidr_range = "192.168.10.0/24"
  region        = "us-east1"
  network       = google_compute_network.tf_vpc_lab.self_link
}