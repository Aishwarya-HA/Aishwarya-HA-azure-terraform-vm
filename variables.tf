
variable "location" {
  description = "Azure region for resources"
  type        = string
  # Changed from centralindia -> southindia to avoid capacity issues
  default     = "southindia"  # try "eastus" if you still hit capacity limits
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
  description = "Your SSH public key (MUST be RSA: starts with 'ssh-rsa')"
  type        = string
  sensitive   = true
}

# Make VM size configurable. B1ms is small & commonly available.
variable "vm_size" {
  description = "Azure VM size (SKU). Change if the default is not available in your region."
  type        = string
  default     = "Standard_B1ms"  # alternatives: Standard_B2s, Standard_D2s_v3, Standard_D2ads_v5
}
