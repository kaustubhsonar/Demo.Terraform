provider "azurerm" {
  features {}
}

module "live" {
  source = "../modules/sample_module"
  env = "live"
}