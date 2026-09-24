resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "development"
    ManagedBy   = "Terraform"
    Practical   = "Week08"
    Project     = "KoalaTech Course Platform"
  }
}

resource "azurerm_storage_container" "student_profile_photos" {
  name                  = "student-profile-photos"
  storage_account_id    = azurerm_storage_account.storage_account.id
  container_access_type = "private"
}

resource "azurerm_storage_container" "lecturer_profile_photos" {
  name                  = "lecturer-profile-photos"
  storage_account_id    = azurerm_storage_account.storage_account.id
  container_access_type = "private"
}
