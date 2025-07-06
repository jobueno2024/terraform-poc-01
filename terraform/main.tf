# main.tf
provider "google" {
  project = var.project_id # 変数から値を取得
  region  = var.region     # 変数から値を取得
}

resource "google_cloud_run_v2_service" "internal_cloudrun_service" {
  name     = "my-internal-cloudrun-service"
  location = var.region # 変数から値を取得

  template {
    containers {
      image = "gcr.io/cloudrun/hello"
    }
  }

  ingress = "INGRESS_TRAFFIC_INTERNAL_ONLY"
}