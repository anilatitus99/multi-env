provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_app_engine_application" "app" {
  location_id = var.region
}
