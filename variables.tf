
###############################
# Global Variables
###############################

variable "prefix" {
  description = "Resource naming prefix"
  type        = string
  default     = "tfvmex"
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
  default     = "Central India"
}

###############################
# VM Access Variables
###############################

variable "admin_username" {
  description = "Admin username for Linux VM"
  type        = string
  default     = "vmadmin"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for VM login"
  type        = string
}
