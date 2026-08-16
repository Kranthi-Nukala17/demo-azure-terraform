variable "subscription_id" {
  description = "Azure subscription ID used by the AzureRM provider."
  type        = string
  default     = "21dc9d4e-91d5-4da3-b1d1-b08a3b35e94c"
}

variable "resource_group_name" {
  description = "Name of the existing resource group where the storage account will be created."
  type        = string
  default     = "aksdevrg"
}

variable "storage_account_name" {
  description = "Globally unique storage account name: 3-24 lowercase letters and numbers."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "storage_account_name must contain 3-24 lowercase letters or numbers only."
  }
}

variable "tags" {
  description = "Tags applied to the storage account."
  type        = map(string)
  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
