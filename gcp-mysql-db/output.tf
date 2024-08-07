output "instance_connection_name" {
  value = google_sql_database_instance.mysql_instance.connection_name
}

output "database_name" {
  value = google_sql_database.default_db.name
}

output "database_user" {
  value = google_sql_user.default.name
}
