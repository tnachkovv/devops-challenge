resource "azurerm_service_plan" "main" {
  name                = var.service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  sku_name            = var.function_app_sku_size
  
depends_on = [
    azurerm_resource_group.main
  ]
}