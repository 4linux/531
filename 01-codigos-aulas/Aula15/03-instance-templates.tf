resource "google_compute_instance_template" "default" {
  name        = "appserver-template"
  description = "This template is used to create app server instances."

  tags = ["webapps"]

  instance_description = "Instancia criada via template"
  machine_type         = var.default_machine_type

  // Create a new boot disk from an image
  disk {
    source_image = var.default_image
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = google_compute_network.vpc_projeto.self_link

    access_config {
      // define ip externo
    }

  }

  metadata_startup_script = file(var.back_provision_script)
}