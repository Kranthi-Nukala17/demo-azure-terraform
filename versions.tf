terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "aksdevrg"
    storage_account_name = "aksdevstg0012504"
    container_name       = "tfstate"
    key                  = "storage.terraform.tfstate"

    # Authenticate with the Azure identity established by azure/login.
    use_azuread_auth = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}
