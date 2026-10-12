data "tfe_teams" "teams_lookup" {
  for_each = var.teams_lookup

  organization = each.value.organization
}

