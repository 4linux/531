resource "google_compute_network" "tf-vpc-lab" {
  name = "tf-vpc-lab"

  auto_create_subnetworks = false
}