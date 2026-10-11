resource "google_network_services_multicast_domain_group" "network_services_multicast_domain_groups" {
  for_each = var.network_services_multicast_domain_groups

  location                  = each.value.location
  multicast_domain_group_id = each.value.multicast_domain_group_id
  deletion_policy           = each.value.deletion_policy
  description               = each.value.description
  labels                    = each.value.labels
  project                   = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

