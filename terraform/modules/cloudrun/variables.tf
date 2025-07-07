# modules/google_cloud_run_v2_service/variables.tf

variable "name" {
  description = "The name of the Cloud Run service."
  type        = string
}

variable "location" {
  description = "The location (region) for the Cloud Run service."
  type        = string
}

variable "image" {
  description = "The container image to deploy."
  type        = string
  default     = "gcr.io/cloudrun/hello"
}

variable "ingress" {
  description = "The ingress traffic configuration for the service."
  type        = string
  default     = "INGRESS_TRAFFIC_INTERNAL_ONLY"
}
