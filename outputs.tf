output "teams_lookup_id" {
  description = "Map of id values across all teams_lookup, keyed the same as var.teams_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_teams.teams_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "teams_lookup_ids" {
  description = "Map of ids values across all teams_lookup, keyed the same as var.teams_lookup except keys with no ids are omitted"
  value       = { for k, v in data.tfe_teams.teams_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "teams_lookup_names" {
  description = "Map of names values across all teams_lookup, keyed the same as var.teams_lookup except keys with no names are omitted"
  value       = { for k, v in data.tfe_teams.teams_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "teams_lookup_organization" {
  description = "Map of organization values across all teams_lookup, keyed the same as var.teams_lookup except keys with no organization are omitted"
  value       = { for k, v in data.tfe_teams.teams_lookup : k => v.organization if v.organization != null && length(v.organization) > 0 }
}

