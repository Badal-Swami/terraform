terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.52.0"
    }
  }
}

provider "azurerm" {

  client_id       = "825fa49d-3782-4ad1-b357-d22184127887"
  client_secret   = "SIw8Q~R0Gd~5O1CBWGzTdKzq535eBd.Zvciqnaor"
  subscription_id = "d7a891a8-7637-480a-beaf-893494356623"
  tenant_id       = "32ea7ffb-be0f-4d26-b6fe-b1adc1eee2c6"

  features {}

}