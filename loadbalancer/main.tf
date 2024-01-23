resource "azurerm_public_ip" "lbnpip" {
  for_each            = var.lbn
  name                = each.value.pip_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
}

resource "azurerm_lb" "lbn" {
  for_each            = var.lbn
  name                = each.value.lbn_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  frontend_ip_configuration {
    name                 = each.value.frontend_ip_name
    public_ip_address_id = azurerm_public_ip.lbnpip[each.key].id
  }
}