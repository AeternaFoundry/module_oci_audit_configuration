variable "audit_configurations" {
  description = <<EOT
Map of audit_configurations, attributes below
Required:
    - compartment_id
    - retention_period_days
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id        = string
    retention_period_days = number
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

