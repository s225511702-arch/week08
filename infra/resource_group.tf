resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "development"
    ManagedBy   = "Terraform"
    Practical   = "Week08"
    Project     = "KoalaTech Course Platform"
  }
}
