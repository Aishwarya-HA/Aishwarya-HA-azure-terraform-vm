
###############################
# Global Variables
###############################

# Prefix used for naming all resources
variable "prefix" {
  description = "Resource name prefix"
  type        = string
  default     = "tfvmex"
}

# Azure deployment region
variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "Central India"   # ✔ Works reliably
}

###############################
# VM Access Variables
###############################

# Admin username for the VM
# NOTE: Azure blocks some usernames like 'azureuser', 'admin', 'testadmin', 'root'
# 'vmadmin' is safe and fully supported on Linux VMs
variable "admin_username" {
  description = "Admin username for the Linux VM"
  type        = string
  default     = "vmadmin"         # ✔ Updated to avoid Azure restrictions
}

# SSH public key for login to the VM
# This is passed via GitHub Actions secret: SSH_PUBLIC_KEY
variable "admin_ssh_public_key" {
  description = "SSH public key for VM login (from SSH keypair)"
  type        = string
}
