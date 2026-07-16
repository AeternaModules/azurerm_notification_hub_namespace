output "notification_hub_namespaces_id" {
  description = "Map of id values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "notification_hub_namespaces_enabled" {
  description = "Map of enabled values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.enabled if v.enabled != null }
}
output "notification_hub_namespaces_location" {
  description = "Map of location values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.location if v.location != null && length(v.location) > 0 }
}
output "notification_hub_namespaces_name" {
  description = "Map of name values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "notification_hub_namespaces_namespace_type" {
  description = "Map of namespace_type values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.namespace_type if v.namespace_type != null && length(v.namespace_type) > 0 }
}
output "notification_hub_namespaces_replication_region" {
  description = "Map of replication_region values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.replication_region if v.replication_region != null && length(v.replication_region) > 0 }
}
output "notification_hub_namespaces_resource_group_name" {
  description = "Map of resource_group_name values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "notification_hub_namespaces_servicebus_endpoint" {
  description = "Map of servicebus_endpoint values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.servicebus_endpoint if v.servicebus_endpoint != null && length(v.servicebus_endpoint) > 0 }
}
output "notification_hub_namespaces_sku_name" {
  description = "Map of sku_name values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "notification_hub_namespaces_tags" {
  description = "Map of tags values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "notification_hub_namespaces_zone_redundancy_enabled" {
  description = "Map of zone_redundancy_enabled values across all notification_hub_namespaces, keyed the same as var.notification_hub_namespaces"
  value       = { for k, v in azurerm_notification_hub_namespace.notification_hub_namespaces : k => v.zone_redundancy_enabled if v.zone_redundancy_enabled != null }
}

