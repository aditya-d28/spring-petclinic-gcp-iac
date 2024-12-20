variable "gcp_project_id" {
    type = string
    description = "The GCP Project ID."
}
variable "gcp_region" {
    type = string
    description = "Region where the resources should be deployed."
}
variable "gcp_zone" {
    type = string
    description = "Zone in the given region."
}