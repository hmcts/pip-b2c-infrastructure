## Defaults
variable "product" {
  default = "pip"
}
variable "component" {
  default = "sds"
}
variable "location" {
  default = "UK South"
}
variable "env" {}
variable "subscription" {
  default = ""
}
variable "deployment_namespace" {
  default = ""
}
variable "common_tags" {
  type = map(string)
}
variable "team_name" {
  default = "PIP DevOps"
}
variable "team_contact" {
  default = "#vh-devops"
}

variable "b2c_tenant_id" {
  type        = string
  description = "Tenant ID of where to deploy B2C"
  default = "" 
}
variable "b2c_sku" {
  type        = string
  description = "Azure B2C SKU, either PremiumP1 or PremiumP2"
  default     = "PremiumP1"
  validation {
    condition     = contains(["PremiumP1", "PremiumP2"], var.b2c_sku)
    error_message = "Azure B2C SKUs are limited to PremiumP1 or PremiumP2."
  }
}