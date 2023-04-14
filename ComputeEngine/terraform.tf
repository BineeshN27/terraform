terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.61.0"
    }
  }

  cloud {
    organization = "bineeshn"
    hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io
    workspaces {
      name = "workspace1"
    }
  }

}

provider "google" {
  project = "warm-melody-378007"
  region  = "us-central1"
  zone    = "us-central1-a"
  #credentials = "serviceaccount-tf.json"
  credentials = var.gcp-creds
}