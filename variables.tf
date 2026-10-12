variable "teams_lookup" {
  description = <<EOT
Map of teams_lookup, attributes below
Optional:
    - organization
EOT

  type = map(object({
    organization = optional(string)
  }))
}

