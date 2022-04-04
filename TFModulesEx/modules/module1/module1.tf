
resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-${var.env}"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "demostorageacc1180${var.env}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "democontainer${var.env}"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
