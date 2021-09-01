terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.34.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "=1.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.0.0"
    }
  }
  required_version = ">= 0.13"
}