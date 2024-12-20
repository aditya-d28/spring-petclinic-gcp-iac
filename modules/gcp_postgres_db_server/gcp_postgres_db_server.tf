# PostgreSQL Instance
resource "google_sql_database_instance" "this" {
  name             = var.postgresql_server_name
  database_version = "POSTGRES_${var.postgresql_version}"
  region           = var.region

  settings {
    tier            = var.sku_name
    disk_size       = var.storage_mb / 1024
    disk_autoresize = var.auto_grow_enabled

    backup_configuration {
      enabled                    = true
      start_time                 = "00:00"
      binary_log_enabled         = true
      location                   = var.geo_redundant_backup_enabled ? "MULTI_REGION" : "REGIONAL"
      retained_backups           = var.backup_retention_days
    }
  }

  settings {
    ip_configuration {
      ipv4_enabled    = var.public_network_access_enabled
      require_ssl      = var.ssl_enforcement_enabled
      private_network  = var.subnet_ids[0]
    }
  }

  user_labels = var.tags
}

# PostgreSQL Database
resource "google_sql_database" "example" {
  name     = var.postgresql_database_name
  instance = google_sql_database_instance.this.name
  charset  = var.charset
  collation = var.collation
}

# PostgreSQL Users (Administrator)
resource "google_sql_user" "administrator" {
  name     = var.administrator_login
  instance = google_sql_database_instance.this.name
  password = var.administrator_login_password
}
