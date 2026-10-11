variable "network_services_multicast_domain_groups" {
  description = <<EOT
Map of network_services_multicast_domain_groups, attributes below
Required:
    - location
    - multicast_domain_group_id
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                  = string
    multicast_domain_group_id = string
    deletion_policy           = optional(string)
    description               = optional(string)
    labels                    = optional(map(string))
    project                   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

