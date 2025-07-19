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

module "bastion" {
  source        = "../../modules/bastion"
  network_name  = var.bastion_network_name
  subnet_name   = var.bastion_subnet_name
  subnet_cidr   = var.bastion_subnet_cidr
  region        = var.region
  instance_name = var.bastion_instance_name
  instance_type = var.bastion_instance_type
  zone          = var.bastion_zone
}