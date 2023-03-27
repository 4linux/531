resource "google_storage_bucket" "treina-4linux-trfm-state" {
  name     = "treina-4linux-trfm-state"
  location = "US-CENTRAL1"

  force_destroy = true

  versioning {
    enabled = true
  }
}