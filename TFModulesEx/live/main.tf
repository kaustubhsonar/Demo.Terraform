provider "azurerm" {
  features {}
}

module "live" {
  source = "../modules/module1"
  env = "live"
}