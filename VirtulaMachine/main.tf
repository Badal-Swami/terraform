resource "azurerm_resource_group" "rg" {
  for_each = var.virtul_machine
  name     = each.value.rg_name
  location = each.value.location
}

resource "azurerm_virtual_network" "vm-vnet" {
  for_each            = var.virtul_machine
  name                = each.value.vnet_name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.rg_name
}

resource "azurerm_subnet" "vm-subnet" {
  for_each             = var.virtul_machine
  name                 = each.value.subnet_name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.location
  address_prefixes     = each.value.address_prefixes
}

resource "azurerm_network_interface" "vm-nic" {
  for_each            = var.virtul_machine
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vm-subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm-1" {
  for_each            = var.virtul_machine
  name                = each.value.vm_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  size                = "Standard_F2"
  admin_username      = each.value.user_name
  admin_password      = each.value.password
  network_interface_ids = [
    azurerm_network_interface.vm-nic[each.key].id,
  ]



  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.publish
    offer     = each.value.offer
    sku       = each.value.sku
    version   = "latest"
  }
}