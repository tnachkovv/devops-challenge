# terraform.tfvars

resource_prefix = "myapp"

location = "East US"

default_tags = {
  environment = "Dev"
  department  = "IT"
}

function_app_name = "${var.resource_prefix}-realtime-processing-service"

function_app_sku_size = "S1"
function_app_sku_tier = "Standard"
