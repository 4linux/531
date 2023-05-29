output "db_server_public_ip" {
  description = "IP Publico da VM de banco"
  value       = google_compute_instance.db.network_interface.0.access_config.0.nat_ip
}

// exemplo de output passando o indice
/* output "web_server_public_ip" {
  description = "IP Publico da VM de web"
  value       = google_compute_instance.web[0].network_interface.0.access_config.0.nat_ip
} */

output "web_servers_names" {
  description = "Nome da VM de web"
  value       = google_compute_instance.web[*].name
}

output "web_servers_zones" {
  description = "Nome da VM de web"
  value       = google_compute_instance.web[*].zone
}

output "web_servers_public_ip" {
  description = "IP Publico da VM de web"
  value       = google_compute_instance.web[*].network_interface.0.access_config.0.nat_ip
}

output "mapweb_servers_names" {
  description = "Nome da VMs de web criadas com o for_each"
  value       = values(google_compute_instance.web_map)[*].name
}

output "mapweb_servers_ips" {
  description = "Nome da VMs de web criadas com o for_each"
  value       = values(google_compute_instance.web_map)[*].network_interface.0.access_config.0.nat_ip
}