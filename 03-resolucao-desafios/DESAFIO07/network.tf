resource "google_compute_network" "tf_vpc_lab" {

  name = format("%s-%s", var.vpc_name, terraform.workspace)

  auto_create_subnetworks = false
}