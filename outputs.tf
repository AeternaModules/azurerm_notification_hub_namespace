output "notification_hub_namespaces" {
  description = "All notification_hub_namespace resources"
  value       = azurerm_notification_hub_namespace.notification_hub_namespaces
}
output "notification_hub_namespaces_enabled" {
  description = "List of enabled values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.enabled]
}
output "notification_hub_namespaces_location" {
  description = "List of location values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.location]
}
output "notification_hub_namespaces_name" {
  description = "List of name values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.name]
}
output "notification_hub_namespaces_namespace_type" {
  description = "List of namespace_type values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.namespace_type]
}
output "notification_hub_namespaces_replication_region" {
  description = "List of replication_region values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.replication_region]
}
output "notification_hub_namespaces_resource_group_name" {
  description = "List of resource_group_name values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.resource_group_name]
}
output "notification_hub_namespaces_servicebus_endpoint" {
  description = "List of servicebus_endpoint values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.servicebus_endpoint]
}
output "notification_hub_namespaces_sku_name" {
  description = "List of sku_name values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.sku_name]
}
output "notification_hub_namespaces_tags" {
  description = "List of tags values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.tags]
}
output "notification_hub_namespaces_zone_redundancy_enabled" {
  description = "List of zone_redundancy_enabled values across all notification_hub_namespaces"
  value       = [for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : v.zone_redundancy_enabled]
}

