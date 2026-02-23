output "ressource_group_id" {
    description = "ID du groupe"
    value = azurerm_ressource.example.id
}

output "vnet_name" {
    description = "nom du reseau virtuel"
    value = azurerm_virtual_network.example.name
}

output "vnet_subnet_id" {
    description = "nom de sous-réseau du réseau virtuel"
    value = azurerm_virtual_network.example.subnet.name
}