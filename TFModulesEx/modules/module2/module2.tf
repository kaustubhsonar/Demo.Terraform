resource "azurerm_storage_account" "example" {
  name                     = "specialstoragedev"
  resource_group_name      = "tfdemo-dev"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  depends_on = [
    module.dev
  ]
}
