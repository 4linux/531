terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.65.0"
    }
  }
}

provider "google" {
  project     = "terraform-lab-386821"
  region      = "us-central1"
  credentials = "/Users/anderson/Documents/gcp-svc/terraform-lab-386821-e8f3a13d89b9.json"
}