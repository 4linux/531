resource "google_compute_disk" "db-disk" {
  name = var.db_disk_name
  type = var.db_disk_type
  zone = local.db_disk_zone
  size = var.db_disk_size
}