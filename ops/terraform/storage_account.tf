resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
   
  depends_on = [
    azurerm_resource_group.main
  ]
}

resource "null_resource" "delay_after_storage_account" {
  provisioner "local-exec" {
    command = "sleep 60"
  }

  depends_on = [azurerm_storage_account.main]
}