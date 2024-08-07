provider "google" {
  project = var.project
  region  = var.region
}

resource "google_sql_database_instance" "mysql_instance" {
  name             = var.db_instance_name
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier              = var.db_tier
    disk_size         = var.db_disk_size
    disk_type         = "PD_SSD"
    availability_type = "ZONAL"

    backup_configuration {
      enabled = true
    }

    ip_configuration {
      ipv4_enabled = true
      authorized_networks {
        name  = "internal-network"
        value = "0.0.0.0/0"
      }

    }
  }

  deletion_protection = false
}

resource "google_sql_database" "default_db" {
  name     = var.db_name
  instance = google_sql_database_instance.mysql_instance.name
}

resource "google_sql_user" "default" {
  name     = var.db_user
  instance = google_sql_database_instance.mysql_instance.name
  password = var.db_password
}
