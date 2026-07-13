variable "management_group_policy_remediations" {
  description = <<EOT
Map of management_group_policy_remediations, attributes below
Required:
    - management_group_id
    - name
    - policy_assignment_id
Optional:
    - failure_percentage
    - location_filters
    - parallel_deployments
    - policy_definition_reference_id
    - resource_count
EOT

  type = map(object({
    management_group_id            = string
    name                           = string
    policy_assignment_id           = string
    failure_percentage             = optional(number)
    location_filters               = optional(list(string))
    parallel_deployments           = optional(number)
    policy_definition_reference_id = optional(string)
    resource_count                 = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.management_group_policy_remediations : (
        v.failure_percentage == null || (v.failure_percentage >= 0 && v.failure_percentage <= 1.0)
      )
    ])
    error_message = "must be between 0 and 1.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.management_group_policy_remediations : (
        v.parallel_deployments == null || (v.parallel_deployments > 0)
      )
    ])
    error_message = "must be positive"
  }
  validation {
    condition = alltrue([
      for k, v in var.management_group_policy_remediations : (
        v.resource_count == null || (v.resource_count > 0)
      )
    ])
    error_message = "must be positive"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

