provider "google" {
  project = var.project
  region  = var.region
}


resource "google_compute_instance" "createTestvmE2Medm" {
  name         = "testvm"
  machine_type = "e2-medium"
  zone         = var.zone

  network_interface {
    network = "default"
  }

  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "testvm"
      }
    }
  }
}