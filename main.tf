module "resource_group" {
  source                  = "../Provider-rg/Azurerm_resource_group"
  resource_group_name     = "rg-tej"
  resource_group_location = "centralindia"
}

resource "azurerm_storage_account" "tej-storage" {
  name                     = "tej-storage"
  resource_group_name      = azurerm_resource_group.rg-tej.name
  location                 = azurerm_resource_group.location.name
  account_tier             = "Standard"
  account_replication_type = "GRS"
}