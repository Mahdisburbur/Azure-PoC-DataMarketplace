provider "azurerm" {
  features {}
}

resource "azurerm_synapse_workspace" "example" {
  name                                 = "dmpocsynapsews"
  resource_group_name                  = azurerm_resource_group.example.name
  location                             = azurerm_resource_group.example.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_account.example.id
  sql_administrator_login              = "adminuser"
  sql_administrator_login_password     = "AdminPassw0rd123!"
}

resource "azurerm_api_management" "example" {
  name                = "dmpocapim"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  publisher_name      = "Data Marketplace PoC"
  publisher_email     = "admin@example.com"
  sku_name            = "Developer_1"
}
