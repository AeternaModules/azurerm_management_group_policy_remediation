output "management_group_policy_remediations" {
  description = "All management_group_policy_remediation resources"
  value       = azurerm_management_group_policy_remediation.management_group_policy_remediations
}
output "management_group_policy_remediations_failure_percentage" {
  description = "List of failure_percentage values across all management_group_policy_remediations"
  value       = [for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : v.failure_percentage]
}
output "management_group_policy_remediations_location_filters" {
  description = "List of location_filters values across all management_group_policy_remediations"
  value       = [for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : v.location_filters]
}
output "management_group_policy_remediations_management_group_id" {
  description = "List of management_group_id values across all management_group_policy_remediations"
  value       = [for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : v.management_group_id]
}
output "management_group_policy_remediations_name" {
  description = "List of name values across all management_group_policy_remediations"
  value       = [for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : v.name]
}
output "management_group_policy_remediations_parallel_deployments" {
  description = "List of parallel_deployments values across all management_group_policy_remediations"
  value       = [for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : v.parallel_deployments]
}
output "management_group_policy_remediations_policy_assignment_id" {
  description = "List of policy_assignment_id values across all management_group_policy_remediations"
  value       = [for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : v.policy_assignment_id]
}
output "management_group_policy_remediations_policy_definition_reference_id" {
  description = "List of policy_definition_reference_id values across all management_group_policy_remediations"
  value       = [for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : v.policy_definition_reference_id]
}
output "management_group_policy_remediations_resource_count" {
  description = "List of resource_count values across all management_group_policy_remediations"
  value       = [for k, v in azurerm_management_group_policy_remediation.management_group_policy_remediations : v.resource_count]
}

