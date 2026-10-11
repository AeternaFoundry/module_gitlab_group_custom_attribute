resource "gitlab_group_custom_attribute" "group_custom_attributes" {
  for_each = var.group_custom_attributes

  group = each.value.group
  key   = each.value.key
  value = each.value.value
}

