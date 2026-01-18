
output "public_ip" {
  description = "The public IP of the virtual machine"
  value       = azurerm_public_ip.pip.ip_address
}

output "ssh_command" {
  description = "Use this command to SSH into the VM"
  value       = "ssh azureuser@${azurerm_public_ip.pip.ip_address}"
}
