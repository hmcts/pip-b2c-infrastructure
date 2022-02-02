locals {
  prefix            = "${var.product}-ss-b2c"
  prefix_no_special = replace(local.prefix, "-", "")
  env_long_name     = var.env == "sbox" ? "sandbox" : var.env == "stg" ? "staging" : var.env
}
data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = "${local.prefix}-rg"
  location = var.location
  tags     = var.common_tags
}