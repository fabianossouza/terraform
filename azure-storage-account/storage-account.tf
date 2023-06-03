resource "azurerm_resource_group" "first_resource_group" {
    name = "storage_account_resource_group"
    location = var.location
  
  tags = local.common_tags
}

resource "azurerm_storage_account" "first_resource_account" {
    name = "fabianostorageaccount"
    resource_group_name = azurerm_resource_group.first_resource_group.name
    location = var.location
    access_tier = var.access_tier
    account_replication_type = var.account_replication_type

    tags = local.common_tags
  
}

resource "azurerm_storage_container" "first_container" {
  name                  = "imagens"
  storage_account_name  = azurerm_storage_account.first_resource_account.name
}