data "google_client_config" "current" {}

resource "google_redis_instance" "redis_example" {
  name           = var.cache_name
  tier           = var.cache_tier
  memory_size_gb = var.cache_capacity
  region             = var.gcp_region
  authorized_network = var.network_id
  transit_encryption_mode = var.transit_encryption_mode != null ? var.transit_encryption_mode : "DISABLED"

  depends_on = [var.psc_peering]

  dynamic "maintenance_policy" {
    for_each = length(var.maintenance_schedule) > 0 ? [var.maintenance_schedule[0]] : []
    content {
      weekly_maintenance_window {
        day        = upper(maintenance_policy.value.day_of_week)
        start_time {
          hours   = maintenance_policy.value.start_hour_utc
          minutes = 0
          seconds = 0
          nanos   = 0
        }
      }
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}