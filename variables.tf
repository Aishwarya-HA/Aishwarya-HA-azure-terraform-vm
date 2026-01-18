
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "centralindia" # If capacity issues persist, change to 'southindia' or 'eastus'
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

# ✅ NEW: make VM size configurable; B2s is commonly available
variable "vm_size" {
  description = "Azure VM size (SKU). Change if the default is not available in your region."
  type        = string
  default     = "Standard_B2s"
}
