resource "google_compute_disk" "db-disk" {
  name = "db-disk"
  type = "pd-ssd"
  zone = "us-central1-a"
  size = 50
}