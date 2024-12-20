data "google_client_config" "current" {}

resource "google_kms_key_ring" "keyring_example" {
  name = var.key_ring_name
  location = var.gcp_region
}

resource "google_kms_crypto_key" "key_example" {
  name            = var.crypto_key_name
  key_ring        = google_kms_key_ring.keyring_example.id
  purpose         = var.crypto_key_purpose
  rotation_period = var.crypto_key_rotation_period
  
  version_template {
    algorithm = var.crypto_key_purpose == "ENCRYPT_DECRYPT" ? "GOOGLE_SYMMETRIC_ENCRYPTION" : var.crypto_key_algorithm
    protection_level = var.protection_level
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_kms_crypto_key_iam_binding" "key_binding" {
  crypto_key_id = google_kms_crypto_key.key_example.id
  role = var.role
  members = var.members
}