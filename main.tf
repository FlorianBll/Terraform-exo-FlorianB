resource "azurerm_resource_group" "example" {
  name     = "rg-terraform-basics"
  location = "France Central"

  tags = {
    environment = "learning"
    managed_by  = "terraform"
  }
}
