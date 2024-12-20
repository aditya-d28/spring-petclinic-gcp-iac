data "google_client_config" "current" {}

resource "google_storage_bucket" "bucket_example" {
  name          = var.storage_bucket_name
  location      = var.gcp_region
  public_access_prevention = var.bucket_public_access_prevention
  force_destroy = var.force_destroy_bucket
}

resource "google_storage_bucket_iam_binding" "binding_example" {
  bucket = google_storage_bucket.bucket_example.name
  role = var.role
  members = var.members
}