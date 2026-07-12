output "management_group_policy_remediations_id" {
  description = "Map of id values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.id }
}
output "management_group_policy_remediations_failure_percentage" {
  description = "Map of failure_percentage values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.failure_percentage }
}
output "management_group_policy_remediations_location_filters" {
  description = "Map of location_filters values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.location_filters }
}
output "management_group_policy_remediations_management_group_id" {
  description = "Map of management_group_id values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.management_group_id }
}
output "management_group_policy_remediations_name" {
  description = "Map of name values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.name }
}
output "management_group_policy_remediations_parallel_deployments" {
  description = "Map of parallel_deployments values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.parallel_deployments }
}
output "management_group_policy_remediations_policy_assignment_id" {
  description = "Map of policy_assignment_id values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.policy_assignment_id }
}
output "management_group_policy_remediations_policy_definition_reference_id" {
  description = "Map of policy_definition_reference_id values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.policy_definition_reference_id }
}
output "management_group_policy_remediations_resource_count" {
  description = "Map of resource_count values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = { for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : k => v.resource_count }
}

