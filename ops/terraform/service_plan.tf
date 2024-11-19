resource "azurerm_service_plan" "main" {
  name                = var.service_plan_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = var.os_type
  sku_name            = var.sku_name

depends_on = [
    azurerm_resource_group.main
  ]
}

resource "null_resource" "delay_after_service_plan" {
  provisioner "local-exec" {
    command = "sleep 60"
  }

  depends_on = [azurerm_service_plan.main]
}