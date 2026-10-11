variable "group_custom_attributes" {
  description = <<EOT
Map of group_custom_attributes, attributes below
Required:
    - group
    - key
    - value
EOT

  type = map(object({
    group = number
    key   = string
    value = string
  }))
}

