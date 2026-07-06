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
  # --- Unconfirmed validation candidates, derived from azurerm_management_group_policy_remediation's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.RemediationName] !ok
  # path: name
  #   source:    [from validate.RemediationName] len(v) == 0 || len(v) > 260
  # path: name
  #   source:    [from validate.RemediationName] strings.ContainsAny(v, invalidCharacters)
  # path: name
  #   source:    [from validate.RemediationName] v != strings.ToLower(v)
  # path: management_group_id
  #   source:    [from managmentGroupValidate.ManagementGroupID] !ok
  # path: management_group_id
  #   source:    [from managmentGroupValidate.ManagementGroupID] err != nil
  # path: policy_assignment_id
  #   source:    [from validate.PolicyAssignmentID] !ok
  # path: policy_assignment_id
  #   source:    [from validate.PolicyAssignmentID] err != nil
  # path: failure_percentage
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: parallel_deployments
  #   source:    validation.IntPositive(...) - no translation rule yet, add one
  # path: resource_count
  #   source:    validation.IntPositive(...) - no translation rule yet, add one
  # path: location_filters[*]
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

