provider "azurerm" {
  features {}
}

module "dev" {
  source = "../modules/sample_module"
  env = "dev" 
}

