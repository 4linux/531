terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.55.0"
    }
  }
}

provider "google" {
  project     = "terraform-lab-378618"
  region      = "us-central1"
  credentials = "/Users/anderson/Documents/credenciais-gcp/terraform-lab-378618-e771177c51d7.json"
}