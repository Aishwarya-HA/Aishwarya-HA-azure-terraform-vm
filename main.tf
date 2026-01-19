
#############################################
# Resource Group
#############################################
resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = var.location
}

#############################################
# Virtual Network
#############################################
resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-vnet-new"   # fresh name avoids prior ghost VNet issues
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

#############################################
# Subnet
#############################################
resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}

#############################################
# Network Interface (NIC)
#############################################
resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }
}

#############################################
# Linux Virtual Machine
#############################################
resource "azurerm_linux_virtual_machine" "main" {
  name                = "${var.prefix}-vm"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  # Size with good availability in India regions
  size                = "Standard_D2s_v3"

  # Variables from variables.tf
  admin_username      = var.admin_username

  # Attach the NIC created above
  network_interface_ids = [
    azurerm_network_interface.main.id
  ]

  # Use SSH key authentication
  admin_ssh_key {
    username   = var.admin_username
    public_key = var.admin_ssh_public_key
  }

  disable_password_authentication = true

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  # Ubuntu 22.04 LTS
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  tags = {
    environment = "staging"
  }
}
