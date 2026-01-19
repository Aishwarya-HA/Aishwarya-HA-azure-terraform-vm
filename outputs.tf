
output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "vnet_name" {
  value = azurerm_virtual_network.main.name
}

output "subnet_id" {
  value = azurerm_subnet.internal.id
}

output "nic_id" {
  value = azurerm_network_interface.main.id
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.main.id
}

output "private_ip" {
  value = azurerm_network_interface.main.ip_configuration[0].private_ip_address
}
