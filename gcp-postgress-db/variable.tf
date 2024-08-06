variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
}

variable "region" {
  description = "The region to deploy the instance."
  type        = string
}

variable "db_name" {
  description = "The name of the database."
  type        = string
}

variable "db_user" {
  description = "The database user."
  type        = string
}

variable "db_password" {
  description = "The password for the database user."
  type        = string
}
