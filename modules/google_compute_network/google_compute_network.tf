data "google_client_config" "current" {}

resource "google_compute_network" "vpc_network_example" {
  project                                   = var.gcp_project_id
  name                                      = var.vpc_name
  routing_mode                              = var.routing_mode
  auto_create_subnetworks                   = var.auto_create_subnetworks
}

resource "google_compute_global_address" "private_ip_alloc" {
  name          = var.ip_range_name
  address_type  = var.address_type
  network       = google_compute_network.vpc_network_example.name
  purpose       = "VPC_PEERING"
  prefix_length = var.ip_prefix_length
}


resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = google_compute_network.vpc_network_example.name
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_alloc.name]
}

resource "google_compute_subnetwork" "subnet_example" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.gcp_region
  network       = google_compute_network.vpc_network_example.id
}