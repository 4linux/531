output "vpc_name" {
  description = "vpc_name"
  value       = google_compute_network.vpc_network.name
}

output "vpc_selflink" {
  description = "vpc_self_link"
  value       = google_compute_network.vpc_network.self_link
}

output "firewall_rule_name" {
  description = "firewall_rule_name"
  value       = google_compute_firewall.allow_default_ports.name
}

output "firewall_rule_selflink" {
  description = "firewall_rule_selflink"
  value       = google_compute_firewall.allow_default_ports.self_link
}