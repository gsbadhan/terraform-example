output "instance_connection_name" {
  value = google_sql_database_instance.postgres_instance.connection_name
}

output "database_name" {
  value = google_sql_database.database.name
}