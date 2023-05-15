terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.64.0"
    }
  }
}

provider "google" {
    region = "us-central1"
}