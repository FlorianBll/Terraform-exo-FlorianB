output "resource_group_id" {
  description = "ID de ma Ressource crée"
  value       = azurerm_resource_group.example.id
}

output "resource_group_location" {
  description = "Ma Ressource crée"
  value       = azurerm_resource_group.example.location
}
