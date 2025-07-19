# modules/bastion/outputs.tf

output "network_name" {
  description = "The name of the created VPC network."
  value       = google_compute_network.vpc_network.name
}

output "subnet_name" {
  description = "The name of the created subnetwork."
  value       = google_compute_subnetwork.subnet.name
}

output "bastion_instance_name" {
  description = "The name of the created bastion host instance."
  value       = google_compute_instance.bastion_host.name
}

output "bastion_instance_zone" {
  description = "The zone of the created bastion host instance."
  value       = google_compute_instance.bastion_host.zone
}
