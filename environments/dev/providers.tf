terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.47"
    }
  }
  #code has been added to configure the backend for storing the Terraform state file in Azure Blob Storage. This is important for collaboration and state management in a team environment.
  backend "azurerm" {
    resource_group_name  = "rg-statefile"
    storage_account_name = "stagefile123321"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
  subscription_id = "48d1c3d5-8796-4a68-8d00-c1d89903818f"
}
