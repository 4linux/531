resource "google_compute_subnetwork" "subnets" {

  count = length(var.subnets_region)

  name = format("%s-%s-%s", var.subnet_prefix, count.index, var.vpc_name)

  region        = var.subnets_region[count.index]
  ip_cidr_range = var.subnets_cidr[count.index]


  network = google_compute_network.tf-vpc-lab.self_link

}