# Configure the Google Cloud provider
provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a GCS bucket
resource "google_storage_bucket" "create_bucket" {
  name          = var.bucket_name # Bucket name must be unique globally
  location      = var.region
  force_destroy = true # Set this to true to allow Terraform to delete non-empty buckets

  # Optional: Set bucket attributes
  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 7
    }
  }
}
