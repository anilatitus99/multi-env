provider "google" {
  credentials = file("/Users/anilatitus/Desktop/creds/multi-env.json")
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "gke_cluster" {
  name     = "beta-gke-cluster"
  location = var.region
  initial_node_count = 1
}

resource "google_sql_database_instance" "db" {
  name             = "beta-sql-instance"
  database_version = "MYSQL_5_7"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}
