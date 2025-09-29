variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-east1"
}

variable "notification_email" {
  description = "Email address for alerts"
  type        = string
}

variable "cloud_run_service_name" {
  description = "Cloud Run service name"
  type        = string
}

variable "cloud_function_name" {
  description = "Cloud Function name"
  type        = string
}

variable "cloud_sql_instance_name" {
  description = "Cloud SQL PostgreSQL instance name"
  type        = string
}

variable "redis_instance_name" {
  description = "Redis instance name"
  type        = string
}

variable "pubsub_topic_name" {
  description = "Pub/Sub topic name"
  type        = string
}

variable "destination_project_name" {
  description = "destination_project_name"
  type        = string
}

variable "source_projects_name" {
  description = "source_projects_name"
  type        = map(string)
}

variable "monitored_projects" {
  type = list(string)
}