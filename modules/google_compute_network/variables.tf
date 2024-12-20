variable "gcp_project_id" {
    type = string
    description = "The GCP Project ID."
}
variable "gcp_region" {
    default = "asia-northeast1"
    type = string
    description = "Region where the resources should be deployed."
}