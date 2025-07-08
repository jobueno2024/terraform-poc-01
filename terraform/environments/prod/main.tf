# main.tf
provider "google" {
  project = var.project_id # 変数から値を取得
  region  = var.region     # 変数から値を取得
}

module "internal_cloudrun_service" {
  source   = "../../modules/cloudrun"
  name     = "my-internal-cloudrun-service"
  location = var.region
  image    = "gcr.io/cloudrun/hello"
  ingress  = "INGRESS_TRAFFIC_INTERNAL_ONLY"
}

resource "google_cloud_run_v2_service_iam_member" "no_auth" {
  location = module.internal_cloudrun_service.location
  name     = module.internal_cloudrun_service.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}