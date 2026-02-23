ressource "azurerm_resource_group" "example" {
	name = ${var.prefix}-rg
	location = var.location

	tags = {
		environment = "tp"
		managed_by = "terraform"
	}
}

ressource "azurerm_virtual_network" "example" {
	name = ${var.prefix}-vnet
	address_space = ["10.0.0.1/16"]
