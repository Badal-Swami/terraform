locals {
  storage_account = {
    name                    = "mystg0001"
    ccount_replication_type = "GRS"
  }

}
locals {
  comman-tag = {
    environment = "staging"
  }
}





resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = local.storage_account.name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = local.storage_account.ccount_replication_type

  tags = local.comman-tag
}