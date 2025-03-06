terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "bddcfe62-7984-462a-9712-fe998a1a886d"

}