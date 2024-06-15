terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.33.0"
    }
  }
}

provider "google" {
  credentials = file("/home/nicolas-caro/.config/gcloud/application_default_credentials.json")
  project = "displays-retail-infra"
  region = "us-central1"
}