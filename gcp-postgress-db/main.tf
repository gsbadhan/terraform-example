provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_sql_database_instance" "postgres_instance" {
  name             = "postgres-instance"
  database_version = "POSTGRES_15"
  region           = var.region
  deletion_protection = false # Disable deletion protection

  settings {
    tier = "db-f1-micro"
    disk_size = 20

    backup_configuration {
      enabled = true
    }
    ip_configuration {
      ipv4_enabled = true
    }
  }
}

resource "google_sql_database" "database" {
  name     = var.db_name
  instance = google_sql_database_instance.postgres_instance.name
}

resource "google_sql_user" "postgres_user" {
  name     = var.db_user
  instance = google_sql_database_instance.postgres_instance.name
  password = var.db_password
}
