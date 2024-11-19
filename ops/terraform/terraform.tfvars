resource_prefix = "myapp"

location = "East US"

default_tags = {
  environment = "Dev"
  department  = "IT"
}

resource_group_name   = "myapp-rg"
storage_account_name  = "myappstorageacct"
service_plan_name     = "myapp-service-plan"
function_app_name     = "myapp-realtime-processing-service"
function_app_sku_size = "Y1"
functions_extension_version = "~4"