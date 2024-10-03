terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"

    }
  }
}


provider "google" {

  project = "infra-ratio-321313"
}

resource "google_compute_instance" "default" {
  name         = "envo2-instance"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

}

