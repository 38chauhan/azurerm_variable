terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
  # backend "azurerm" {
  #      resource_group_name  = "ashurg-3"
  #      storage_account_name = "ashurgstg3"
  #      container_name       = "ashucont3"
  #      key                  = "terraform.tfstate"
  #  }
}

provider "azurerm" {
  features {
    # resource_group {
    #   prevent_deletion_if_contains_resources = true
    # }
  }
  subscription_id = "5fbead97-423e-4814-809c-114db991d911"
}

