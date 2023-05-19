resource "google_compute_disk" "dados" {
  name = "dados"
  type = "pd-ssd"
  zone = local.db_zone
  size = var.dbdisk_size
}