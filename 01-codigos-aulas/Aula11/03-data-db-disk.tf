data "google_compute_disk" "db_disk" {
  name = "db-data-disk"
  zone = "us-central1-c"
}

//disco com parametros vindo de uma tupla
resource "google_compute_disk" "tuple_disk" {
  name = var.tuple_disk[0]
  type = var.tuple_disk[1]
  zone = var.tuple_disk[2]
  size = var.tuple_disk[3]
}

//disco com parametros vindo de um object
resource "google_compute_disk" "object_disk" {
  name = var.disk_object["diskName"]
  type = var.disk_object["diskType"]
  zone = var.disk_object["diskZone"]
  size = var.disk_object["diskSize"]
}