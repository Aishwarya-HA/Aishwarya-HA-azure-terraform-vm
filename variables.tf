
# variables.tf
variable "prefix" {
  description = "Resource name prefix for all Azure resources"
  type        = string
  default     = "tfvmex"
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
  # Set to a region you want (you can switch to Central India if you prefer)
  default     = "West Europe"
}

variable "admin_username" {
  description = "Admin username for the Linux VM"
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for VM login (contents of your .pub file)"
  type        = string
}
