data "google_compute_disk" "db_disk" {
  name    = "db-data-disk"
  zone    = "us-central1-c"
}