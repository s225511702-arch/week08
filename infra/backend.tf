terraform {
  backend "azurerm" {
    resource_group_name  = "koalatech-tfstate-rg"
    storage_account_name = "s225511702tfstate"
    container_name       = "tfstate"
    key                  = "week08.terraform.tfstate"
  }
}
