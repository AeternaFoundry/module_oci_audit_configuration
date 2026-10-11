output "audit_configurations_id" {
  description = "Map of id values across all audit_configurations, keyed the same as var.audit_configurations except keys with no id are omitted"
  value       = { for k, v in oci_audit_configuration.audit_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "audit_configurations_compartment_id" {
  description = "Map of compartment_id values across all audit_configurations, keyed the same as var.audit_configurations except keys with no compartment_id are omitted"
  value       = { for k, v in oci_audit_configuration.audit_configurations : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "audit_configurations_retention_period_days" {
  description = "Map of retention_period_days values across all audit_configurations, keyed the same as var.audit_configurations except keys with no retention_period_days are omitted"
  value       = { for k, v in oci_audit_configuration.audit_configurations : k => v.retention_period_days if v.retention_period_days != null }
}

