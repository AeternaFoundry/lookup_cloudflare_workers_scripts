variable "workers_scripts_lookup" {
  description = <<EOT
Map of workers_scripts_lookup, attributes below
Optional:
    - account_id
    - max_items
    - tags
EOT

  type = map(object({
    account_id = optional(string)
    max_items  = optional(number)
    tags       = optional(string)
  }))
}

