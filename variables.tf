
###############################
# Global Variables
###############################

# Used as a prefix in names of RG, VNet, NIC, VM, etc.
variable "prefix" {
  description = "Resource naming prefix used for all Azure resources"
  type        = string
  default     = "tfvmex"
}

# Target Azure region for all resources
variable "location" {
  description = "Azure region for deployment (e.g., Central India, South India)"
  type        = string
  default     = "Central India"
}

###############################
# VM Access Variables
###############################

# Safe admin username for the Linux VM (avoid reserved names like admin, root, azureuser)
variable "admin_username" {
  description = "Admin username for the Linux VM"
  type        = string
  default     = "vmadmin"
}

# SSH public key to log in (pass via TF_VAR_admin_ssh_public_key in the workflow)
variable "admin_ssh_public_key" {
  description = "SSH public key for VM login (contents of your .pub key)"
  type        = string
}
