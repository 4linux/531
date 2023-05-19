output "web1_self" {
  value = google_compute_instance.web1.self_link
}

output "web1_access_ip" {
  value = google_compute_instance.web1.network_interface.0.access_config.0.nat_ip
}

output "web1_zone" {
  value = google_compute_instance.web1.zone
}

output "web2_self" {
  value = google_compute_instance.web2.self_link
}

output "web2_zone" {
  value = google_compute_instance.web2.zone
}

output "web2_access_ip" {
  value = google_compute_instance.web2.network_interface.0.access_config.0.nat_ip
}

output "db_self" {
  value = google_compute_instance.dbserver1.self_link
}

output "db_zone" {
  value = google_compute_instance.dbserver1.zone
}

output "db_access_ip" {
  value = google_compute_instance.dbserver1.network_interface.0.access_config.0.nat_ip
}