
variable "prefix" {
  description = "Resource name prefix"
  type        = string
  default     = "tfvmex"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"   # ✔ Works in your subscription
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for VM login"
  type        = string
}
