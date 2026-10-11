output "group_custom_attributes_id" {
  description = "Map of id values across all group_custom_attributes, keyed the same as var.group_custom_attributes except keys with no id are omitted"
  value       = { for k, v in gitlab_group_custom_attribute.group_custom_attributes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_custom_attributes_group" {
  description = "Map of group values across all group_custom_attributes, keyed the same as var.group_custom_attributes except keys with no group are omitted"
  value       = { for k, v in gitlab_group_custom_attribute.group_custom_attributes : k => v.group if v.group != null }
}
output "group_custom_attributes_key" {
  description = "Map of key values across all group_custom_attributes, keyed the same as var.group_custom_attributes except keys with no key are omitted"
  value       = { for k, v in gitlab_group_custom_attribute.group_custom_attributes : k => v.key if v.key != null && length(v.key) > 0 }
}
output "group_custom_attributes_value" {
  description = "Map of value values across all group_custom_attributes, keyed the same as var.group_custom_attributes except keys with no value are omitted"
  value       = { for k, v in gitlab_group_custom_attribute.group_custom_attributes : k => v.value if v.value != null && length(v.value) > 0 }
}

