resource "oci_audit_configuration" "audit_configurations" {
  for_each = var.audit_configurations

  compartment_id        = each.value.compartment_id
  retention_period_days = each.value.retention_period_days

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

