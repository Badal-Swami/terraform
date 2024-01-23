// creaing RG by using of map

resource "azurerm_resource_group" "Test-RG" {
  for_each = var.rg_name
  name     = each.value.name
  location = each.value.location
}




// creating RG by using of List
# resource "azurerm_resource_group" "Test-RG" {
#   for_each = toset(var.rg_name)
#   name     = each.value
#   location = "east us"
# }