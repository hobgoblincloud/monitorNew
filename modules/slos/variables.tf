variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "service_name" {
  description = "Cloud Run service_name"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-east1"
}