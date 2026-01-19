
# providers.tf
terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.120"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-aish"
    storage_account_name = "tfstateaish21877"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
``
