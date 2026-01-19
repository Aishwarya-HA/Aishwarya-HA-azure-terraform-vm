
############################################
# General variables
############################################

# Common name prefix used for all resources
variable "prefix" {
  description = "Resource name prefix for all Azure resources (e.g., tfvmex)"
  type        = string
  default     = "tfvmex"
}

# Deployment region
variable "location" {
  description = "Azure region for deployment"
  type        = string
  # Use a region you have access/quotas for: West Europe, East US, etc.
  default     = "West Europe"
}

############################################
# VM access variables
############################################

# Admin username for the Linux VM
variable "admin_username" {
  description = "Admin username for the Linux VM"
  type        = string
  default     = "azureuser"
}

# SSH public key to enable key-based authentication (recommended)
# Provide via environment variable: TF_VAR_admin_ssh_public_key
variable "admin_ssh_public_key" {
  description = "SSH public key for VM login (contents of your .pub file)"
  type        = string
  # No default to encourage secure injection via CI/CD or tfvars
}

# (Optional) If you ever need password auth instead of SSH keys:
# Uncomment this and wire it in the VM resource.
# variable "admin_password" {
#   description = "Admin password for the VM (not recommended; prefer SSH keys)"
#   type        = string
#   sensitive   = true
# }
