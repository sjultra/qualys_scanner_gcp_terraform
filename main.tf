provider "google" {
  credentials = var.service_account_secret
  project     = var.gcp_project_id
  region      = var.resources_region
  zone        = var.resources_zone
}
