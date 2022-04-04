resource "azurerm_storage_account" "example" {
  name                     = "${var.storageAccountName}"
  resource_group_name      = "tfdemo-${var.env}"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS" 
}
