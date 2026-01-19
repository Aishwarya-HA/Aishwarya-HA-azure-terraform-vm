
variable "prefix"        { type = string, default = "tfvmex" }
variable "location"      { type = string, default = "Central India" }

# Use a safe username (Azure can block common defaults)
variable "admin_username" {
  type    = string
  default = "vmadmin"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for VM login"
  type        = string
}
