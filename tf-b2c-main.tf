locals {
  b2c_name_suffix = var.env == "prod" ? "" : "Non-Prod ${var.env}"
}

resource "azurerm_aadb2c_directory" "directory" {
  country_code            = "GB"
  data_residency_location = "Europe"
  display_name            = "Publication and Information Directory ${local.b2c_name_suffix}"
  domain_name             = "${local.prefix}-${var.env}.onmicrosoft.com"
  resource_group_name     = azurerm_resource_group.rg.name
  sku_name                = var.b2c_sku
  tags                    = var.common_tags
}