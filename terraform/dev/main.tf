provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "gke_cluster" {
  name     = "dev-gke-cluster"
  location = var.region
  initial_node_count = 1
}

resource "google_sql_database_instance" "db" {
  name             = "dev-sql-instance"
  database_version = "MYSQL_5_7"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}
