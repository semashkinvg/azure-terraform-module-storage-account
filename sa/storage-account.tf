resource "azurerm_storage_account" "default" {
  name                     = replace("${var.global_prefix}-${var.location}-${var.environment_code}-${var.purpose}", "-", "")
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  is_hns_enabled           = var.is_hns_enabled
}

resource "azurerm_storage_data_lake_gen2_filesystem" "default" {
  name               = replace("${var.global_prefix}-${var.location}-${var.environment_code}-${var.purpose}", "-", "")
  storage_account_id = azurerm_storage_account.default.id
}