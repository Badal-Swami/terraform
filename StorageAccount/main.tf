resource "azurerm_storage_account" "stg_0001" {
  for_each                 = var.stg_name
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = var.environment == "dev" ? "LRS" : "GRS"

}