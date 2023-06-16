variable "global_prefix" {
  type        = string
  description = "The global prefix for resources."
}

variable "purpose" {
  type        = string
  description = "The purpose of the resource."
}

variable "environment_code" {
  type        = string
  description = "The environment code."
}

variable "location" {
  type        = string
  description = "The Azure region."
}

variable "rg_name" {
  type        = string
  description = "The resource group name."
}

variable "account_tier" {
  type  = string
  default = "Standard"
}

variable "account_replication_type" {
  type  = string
  default = "LRS"
}

variable "account_kind" {
  type  = string
  default = "StorageV2"
}

variable "is_hns_enabled" {
  type  = bool
  default = true
}

variable "tags" {
  type        = map(string)
  description = "The resource tags."
}
