# modules/bastion/variables.tf

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnetwork."
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR range for the subnetwork."
  type        = string
}

variable "region" {
  description = "The region where the subnetwork will be created."
  type        = string
}

variable "instance_name" {
  description = "The name of the bastion host instance."
  type        = string
}

variable "instance_type" {
  description = "The machine type for the bastion host instance."
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "The zone where the bastion host instance will be created."
  type        = string
}
