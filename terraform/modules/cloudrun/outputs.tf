# modules/google_cloud_run_v2_service/outputs.tf

output "name" {
  description = "The name of the created Cloud Run service."
  value       = google_cloud_run_v2_service.service.name
}

output "location" {
  description = "The location of the created Cloud Run service."
  value       = google_cloud_run_v2_service.service.location
}

output "uri" {
  description = "The URI of the created Cloud Run service."
  value       = google_cloud_run_v2_service.service.uri
}
