output "vm_name" {
  description = "Nome da vm criada"
  value       = google_compute_instance.vm.name
}

output "vm_id" {
  description = "ID da instancia"
  value       = google_compute_instance.vm.id
}

output "vm_self_link" {
  description = "Self Link da instancia"
  value       = google_compute_instance.vm.self_link
}

output "vm_zone" {
  description = "Zona onde a instância foi provisionada"
  value       = google_compute_instance.vm.zone
}

output "vm_nat_ip" {
  description = "IP Publico da Instancia"
  value       = google_compute_instance.vm.network_interface.0.access_config.0.nat_ip
}