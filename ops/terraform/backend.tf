terraform {
  backend "azurerm" {
    resource_group_name   = "myapp-rg"
    storage_account_name  = "myappstorageacct01"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}