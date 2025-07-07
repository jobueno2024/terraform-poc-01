# modules/google_cloud_run_v2_service/main.tf

resource "google_cloud_run_v2_service" "service" {
  name     = var.name
  location = var.location

  template {
    containers {
      image = var.image
    }
  }

  ingress = var.ingress

  deletion_protection = false
}
