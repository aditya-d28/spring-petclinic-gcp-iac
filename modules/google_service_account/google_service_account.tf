data "google_client_config" "current" {}

resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = var.service_account_name
  project      = var.gcp_project_id
  description  = var.service_account_description
}