output "ressource_group_id" {
    description = "ID du groupe"
    value = azurerm_resource_group.rg.id
}

output "vnet_name" {
    description = "nom du reseau virtuel"
    value = azurerm_virtual_network.vnet.name
}

output "vnet_subnet_id" {
    description = "nom de sous-réseau du réseau virtuel"
    value = azurerm_subnet.subnet.id
}

output "public_ip_address" {
    description = "Adresse IP publique du site web"
    value = azurerm_public_ip.lb_pip.ip_address
}