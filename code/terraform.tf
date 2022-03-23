terraform {
    backend "local" {
        
    }
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=2.97.0"
        }
    }
}