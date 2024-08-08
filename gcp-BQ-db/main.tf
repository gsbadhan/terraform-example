provider "google" {
  project = var.project
  region  = var.region
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id    = var.dataset_id
  friendly_name = var.dataset_friendly_name
  description   = var.dataset_description
  location      = var.region
}

resource "google_bigquery_table" "table" {
  dataset_id    = google_bigquery_dataset.dataset.dataset_id
  table_id      = var.table_id
  friendly_name = var.table_friendly_name
  description   = var.table_description

  schema = file(var.table_schema_path)

  time_partitioning {
    type = "DAY"
  }
}
