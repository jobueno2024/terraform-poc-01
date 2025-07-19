# variables.tf
variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The GCP region to deploy resources."
  type        = string
  default     = "asia-northeast1"
}

variable "bastion_network_name" {
  description = "The name of the VPC network for the bastion host."
  type        = string
  default     = "bastion-vpc-network"
}

variable "bastion_subnet_name" {
  description = "The name of the subnetwork for the bastion host."
  type        = string
  default     = "bastion-subnet"
}

variable "bastion_subnet_cidr" {
  description = "The CIDR range for the bastion host subnetwork."
  type        = string
  default     = "10.10.0.0/20"
}

variable "bastion_instance_name" {
  description = "The name of the bastion host instance."
  type        = string
  default     = "bastion-host"
}

variable "bastion_instance_type" {
  description = "The machine type for the bastion host instance."
  type        = string
  default     = "e2-micro"
}

variable "bastion_zone" {
  description = "The zone where the bastion host instance will be created."
  type        = string
  default     = "asia-northeast1-b"
}