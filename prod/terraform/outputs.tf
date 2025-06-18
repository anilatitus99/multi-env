output "app_engine_region" {
  value = google_app_engine_application.app.location_id
}
