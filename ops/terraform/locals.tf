# locals.tf
locals {
  default_tags = {
    environment = "dev"
    project     = "realtime-processing"
    owner       = "Ops-team"
    resource_prefix = "myproject"
  }
}
