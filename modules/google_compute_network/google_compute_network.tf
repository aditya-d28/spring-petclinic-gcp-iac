data "google_client_config" "current" {}

resource "google_compute_network" "vpc_network_example" {
  project                                   = var.gcp_project_id
  name                                      = var.vpc_name
  routing_mode                              = var.routing_mode
  auto_create_subnetworks                   = var.auto_create_subnetworks
}