resource "google_compute_http_health_check" "default" {
  name               = "http-health-check"
  request_path       = "/"
  timeout_sec        = 1
  check_interval_sec = 1
}

resource "google_compute_backend_service" "default" {
  name        = "backend"
  port_name   = "http"
  protocol    = "HTTP"
  timeout_sec = 10

  backend {
    group                 = google_compute_region_instance_group_manager.appserver-asia.instance_group
    balancing_mode        = "RATE"
    max_rate_per_instance = 1
  }

  backend {
    group                 = google_compute_region_instance_group_manager.appserver-us.instance_group
    balancing_mode        = "RATE"
    max_rate_per_instance = 1
  }

  health_checks = [google_compute_http_health_check.default.id]
}