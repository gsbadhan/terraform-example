variable "project" {
  description = "The GCP project to use."
  type        = string
}

variable "region" {
  description = "The GCP region to deploy the MySQL instance."
  type        = string
}

variable "db_instance_name" {
  description = "The name of the MySQL instance."
  type        = string
}

variable "db_name" {
  description = "The name of the MySQL database."
  type        = string
}

variable "db_user" {
  description = "The MySQL username."
  type        = string
}

variable "db_password" {
  description = "The MySQL password."
  type        = string
}

variable "db_tier" {
  description = "The tier of the MySQL instance."
  type        = string
  default     = "db-f1-micro"
}

variable "db_disk_size" {
  description = "The size of the MySQL instance disk in GB."
  type        = number
  default     = 10
}
