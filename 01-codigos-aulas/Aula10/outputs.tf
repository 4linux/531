output "db_server_public_ip" {
  description = "IP Publico da VM de banco"
  value       = google_compute_instance.db.network_interface.0.access_config.0.nat_ip
}

output "web_server_public_ip" {
  description = "IP Publico da VM de web"
  value       = google_compute_instance.web.network_interface.0.access_config.0.nat_ip
}