
# Resource Group name
output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

# Virtual Network name
output "vnet_name" {
  value = azurerm_virtual_network.main.name
}

# Subnet ID
output "subnet_id" {
  value = azurerm_subnet.internal.id
}

# NIC ID
output "nic_id" {
  value = azurerm_network_interface.main.id
}

# NIC private IP (handy after apply)
output "private_ip" {
  value = azurerm_network_interface.main.ip_configuration[0].private_ip_address
}

# ---- VM Outputs ----

