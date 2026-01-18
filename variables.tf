
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "centralindia"
}

variable "prefix" {
  description = "Name prefix for all resources"
  type        = string
  default     = "aishvm"
}

variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
  default     = "azureuser"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH to the VM (restrict to your IP for better security)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "ssh_public_key" {
  description = "Your SSH public key"
  type        = string
  sensitive   = true
}
