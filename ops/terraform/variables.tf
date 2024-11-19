variable "resource_prefix" {
  description = "Prefix for all resources"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "default_tags" {
  description = "Default tags to apply to resources"
  type        = map(string)
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "service_plan_name" {
  description = "The name of the service plan"
  type        = string
}

variable "function_app_name" {
  description = "The name of the function app"
  type        = string
}

variable "function_app_sku_size" {
  description = "The SKU size for the function app"
  type        = string
}

variable "account_tier" {
  description = "The tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
}

variable "https_only" {
  description = "Enable HTTPS only"
  type        = bool
  default     = true
}

variable "functions_extension_version" {
  description = "The version of the functions extension"
  type        = string
  default     = "~4"
}

variable "http2_enabled" {
  description = "Enable HTTP2"
  type        = bool
  default     = true
}

variable "use_32_bit_worker" {
  description = "Use 32-bit worker process"
  type        = bool
  default     = false
}

variable "minimum_tls_version" {
  description = "Minimum TLS version"
  type        = string
  default     = "1.2"
}

variable "node_version" {
  description = "Node.js version"
  type        = string
  default     = "18"
}
variable "os_type" {
  description = "Os type of the Runner"
  type        = string
  default     = "Linux"
}