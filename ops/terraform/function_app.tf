resource "azurerm_linux_function_app" "main" {
  name                       = "${local.resource_prefix}-realtime-processing-service"
  resource_group_name        = azurerm_resource_group.main.name
  location                   = azurerm_resource_group.main.location
  service_plan_id            = azurerm_service_plan.main.id
  storage_account_name       = azurerm_storage_account.main.name
  storage_account_access_key = azurerm_storage_account.main.primary_access_key
  tags                       = local.default_tags

  https_only                  = var.https_only
  functions_extension_version = var.functions_extension_version

  site_config {
    http2_enabled       = var.http2_enabled
    use_32_bit_worker   = var.use_32_bit_worker
    minimum_tls_version = var.minimum_tls_version

    application_stack {
      node_version = var.node_version
    }
  }

  app_settings = {
    WEBSITE_MOUNT_ENABLED = "1",
  }
  depends_on = [
    azurerm_storage_account.main,
    azurerm_service_plan.main
  ]
}