resource "google_compute_region_instance_group_manager" "appserver-asia" {
  name = "appserver-asia"

  base_instance_name = "webapps"
  region             = var.group_regions[0]

  version {
    instance_template = google_compute_instance_template.default.self_link
  }

  target_size = var.lb_group_sizes[0]
}

resource "google_compute_region_instance_group_manager" "appserver-uscentral" {
  name = "appserver-uscentral"

  base_instance_name        = "webapps"
  region                    = var.group_regions[1]
  distribution_policy_zones = var.us_zones


  version {
    instance_template = google_compute_instance_template.default.self_link
  }

  target_size = var.lb_group_sizes[1]
}