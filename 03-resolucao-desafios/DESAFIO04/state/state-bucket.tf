resource "google_storage_bucket" "treina-4linux-desafio04-abs" {
  name     = "treina-4linux-desafio04-abs"
  location = "US-CENTRAL1"

  force_destroy = true

  versioning {
    enabled = true
  }
}