terraform {
  required_version = ">= 1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.3.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 7.3.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  impersonate_service_account = "sa-terraform-infra@daytrader-seed-f69d.iam.gserviceaccount.com"
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
  impersonate_service_account = "sa-terraform-infra@daytrader-seed-f69d.iam.gserviceaccount.com"
}