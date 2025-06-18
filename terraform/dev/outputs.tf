output "gke_cluster_name" {
  value = google_container_cluster.gke_cluster.name
}

output "sql_instance_name" {
  value = google_sql_database_instance.db.name
}
