data "google_client_config" "current" {}

resource "google_project_iam_custom_role" "role_example" {
  role_id     = var.role_id
  title       = var.title
  project = var.gcp_project_id
  description = var.description
  permissions = var.permissions
}
