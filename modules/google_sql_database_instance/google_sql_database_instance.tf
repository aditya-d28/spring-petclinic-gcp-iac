data "google_client_config" "current" {}

resource "google_sql_database_instance" "psql_db_server" {
  name             = var.psql_server_name
  database_version = "POSTGRES_${var.psql_version}"
  region           = var.gcp_region

  depends_on = [var.psc_peering]

  settings {
    tier            = var.psql_tier
    edition         = var.psql_edition
    disk_size       = var.storage_gb
    disk_autoresize = var.disk_autoresize_enabled
    user_labels     = var.labels
    availability_type    = var.psql_availability

    backup_configuration {
      enabled                    = var.enable_backup
      start_time                 = var.backup_start_time
      point_in_time_recovery_enabled = var.enable_point_in_time_recovery
      transaction_log_retention_days = var.backup_retention_days
    }

    ip_configuration {
      ipv4_enabled    = var.public_network_access_enabled
      private_network  = var.network_id
      ssl_mode = var.ssl_mode
      enable_private_path_for_google_cloud_services = var.enable_psa
    }
  }

  lifecycle{
    ignore_changes = [settings[0].disk_size]
  }
}

resource "google_sql_database" "psql_db" {
  name     = var.psql_database_name
  instance = google_sql_database_instance.psql_db_server.name
  charset  = var.charset
  collation = var.collation
}

resource "google_sql_user" "psql_administrator" {
  name     = var.administrator_login
  instance = google_sql_database_instance.psql_db_server.name
  password = var.administrator_login_password
}
