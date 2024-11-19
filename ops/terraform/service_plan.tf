resource "azurerm_service_plan" "main" {
  name                     = "${local.resource_prefix}-service-plan"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  kind                     = "FunctionApp"  # For Function App consumption plan
  os_type                  = "Linux"  
  sku_name =        "Consumption"
  tags = local.default_tags
}
