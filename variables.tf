variable "gcp_project_id" {
    default = "civil-lambda-401204"
    type = string
    description = "The GCP Project ID."
}
variable "gcp_region" {
    default = "asia-northeast1"
    type = string
    description = "Region where the resources should be deployed."
}
variable "gcp_zone" {
    default = "asia-northeast1-a"
    type = string
    description = "Zone in the given region."
}