# modules/google_cloud_run_v2_service/outputs.tf

output "service_name" {
  description = "The name of the created Cloud Run service."
  value       = google_cloud_run_v2_service.service.name
}

output "service_uri" {
  description = "The URI of the created Cloud Run service."
  value       = google_cloud_run_v2_service.service.uri
}
