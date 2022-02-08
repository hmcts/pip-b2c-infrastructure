terraform {
  backend "azurerm" {}

  required_version = ">= 1.0.4"
  required_providers {
    azurerm = {
      version = ">=2.0.0"
    }
    random = {
      version = ">= 2.2.0"
    }
    azuread = {
      version = ">=1.6.0"
    }
  }
}

provider "azurerm" {
  features {}
  #tenant_id = var.b2c_tenant_id
}
provider "random" {}
provider "azuread" {
  #tenant_id = var.b2c_tenant_id
}
