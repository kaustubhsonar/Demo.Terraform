provider "azurerm" {
  features {}
}

module "dev" {
  source = "../modules/module1"
  env = "dev" 
}

module "secondStorage" {
  source = "../modules/module2"
  storageAccountName = "specialstoragedev"
  env = "dev"
  
  depends_on = [
    module.dev
  ]
}

