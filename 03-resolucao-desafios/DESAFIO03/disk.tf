resource "google_compute_disk" "dados" {
  name = "dados"
  type = "pd-ssd"
  zone = "us-east1-c"
  size = 50
}