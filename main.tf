locals {
  prefix               = "${var.product}-ss"
  prefix_no_special    = replace(local.prefix, "-", "")
  env_long_name        = var.env == "sbox" ? "sandbox" : var.env == "stg" ? "staging" : var.env
  support_env          = var.env == "prod" || var.env == "demo" || var.env == "sbox" ? var.env : "stg"
}
data "azurerm_client_config" "current" {}

