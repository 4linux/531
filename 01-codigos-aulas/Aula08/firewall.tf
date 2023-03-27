resource "google_compute_firewall" "default-allow-http" {
  name    = "default-allow-http"
  network = "default"

    source_ranges           = [
        "0.0.0.0/0",
    ]

    allow {
        ports    = [
            "80",
            "8080",
        ]
        protocol = "tcp"
    }
}
