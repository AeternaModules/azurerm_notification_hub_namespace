variable "notification_hub_namespaces" {
  description = <<EOT
Map of notification_hub_namespaces, attributes below
Required:
    - location
    - name
    - namespace_type
    - resource_group_name
    - sku_name
Optional:
    - enabled
    - replication_region
    - tags
    - zone_redundancy_enabled
EOT

  type = map(object({
    location                = string
    name                    = string
    namespace_type          = string
    resource_group_name     = string
    sku_name                = string
    enabled                 = optional(bool)
    replication_region      = optional(string)
    tags                    = optional(map(string))
    zone_redundancy_enabled = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.notification_hub_namespaces : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.notification_hub_namespaces : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.notification_hub_namespaces : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.notification_hub_namespaces : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

