
# outputs.tf — CLEAN, ASCII-ONLY

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

# The NIC private IP is convenient to surface after apply
output "private_ip" {
  value = azurerm_network_interface.main.ip_configuration[0].private_ip_address
}

# --- Optional: only enable this if your VM block header is exactly:
# resource "azurerm_linux_virtual_machine" "main" { ... }
# Otherwise, leave it commented to avoid "undeclared resource" errors.
# output "vm_id" {
#   value = azurerm_linux_virtual_machine.main.id
# }
