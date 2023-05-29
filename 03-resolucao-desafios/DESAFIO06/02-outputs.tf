output "subnet_names" {
  value = google_compute_subnetwork.subnets.*.name
}

output "webfront_ip" {
  value = google_compute_instance.webfront.network_interface.0.access_config.0.nat_ip
}