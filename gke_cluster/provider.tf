# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "WaytoDevOps"
  region  = "us-west1"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "wayto_devops"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}