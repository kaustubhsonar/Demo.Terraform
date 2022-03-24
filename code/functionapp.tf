

# resource "azurerm_app_service_plan" "example" {
#   name                = "demo-azure-functions-service-plan"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   kind                = "FunctionApp"

#   sku {
#     tier = "Dynamic"
#     size = "Y1"
#   }
# }

# resource "azurerm_function_app" "azurerm_function_app" {
#   name                       = "demo-azure-functions"
#   location                   = azurerm_resource_group.example.location
#   resource_group_name        = azurerm_resource_group.example.name
#   app_service_plan_id        = azurerm_app_service_plan.example.id
#   storage_account_name       = azurerm_storage_account.example.name
#   storage_account_access_key = azurerm_storage_account.example.primary_access_key
# }