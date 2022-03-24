provider "azurerm" {
  features {}
}

module "dev" {
  source = "../modules/sample_module"
  env = "dev" 
}

# resource "azurerm_storage_account" "example" {
#   name                     = "demostoracc1180temp"
#   resource_group_name      = "tfdemo-dev"
#   location                 = "West Europe"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   depends_on = [
#     module.dev
#   ]
# }
