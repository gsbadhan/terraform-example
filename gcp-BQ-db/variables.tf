variable "project" {
  description = "The GCP project to use."
  type        = string
}

variable "region" {
  description = "The GCP region to deploy the BigQuery resources."
  type        = string
}

variable "dataset_id" {
  description = "The ID of the BigQuery dataset."
  type        = string
}

variable "dataset_friendly_name" {
  description = "The friendly name of the BigQuery dataset."
  type        = string
}

variable "dataset_description" {
  description = "The description of the BigQuery dataset."
  type        = string
}

variable "table_id" {
  description = "The ID of the BigQuery table."
  type        = string
}

variable "table_friendly_name" {
  description = "The friendly name of the BigQuery table."
  type        = string
}

variable "table_description" {
  description = "The description of the BigQuery table."
  type        = string
}

variable "table_schema_path" {
  description = "The path to the schema file for the BigQuery table."
  type        = string
}
