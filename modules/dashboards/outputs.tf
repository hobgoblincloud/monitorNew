# outputs.tf
output "cloud_run_dashboard_id" {
  description = "Resource identifier of the Cloud Run monitoring dashboard"
  value       = google_monitoring_dashboard.cloud_run_dashboard.id
}

output "cloud_run_dashboard_url" {
  description = "Direct URL to the Cloud Run dashboard in the Google Cloud Console"
  value       = "https://console.cloud.google.com/monitoring/dashboards/builder/${google_monitoring_dashboard.cloud_run_dashboard.id}?project=${var.project_id}"
}

output "cloud_function_dashboard_id" {
  description = "Resource identifier of the Cloud Function monitoring dashboard"
  value       = google_monitoring_dashboard.cloud_function_dashboard.id
}

output "cloud_function_dashboard_url" {
  description = "Direct URL to the Cloud Function dashboard in the Google Cloud Console"
  value       = "https://console.cloud.google.com/monitoring/dashboards/builder/${google_monitoring_dashboard.cloud_function_dashboard.id}?project=${var.project_id}"
}

output "cloud_sql_postgresql_dashboard_id" {
  description = "Resource identifier of the Cloud SQL (PostgreSQL) monitoring dashboard"
  value       = google_monitoring_dashboard.cloud_sql_postgresql_dashboard.id
}

output "cloud_sql_postgresql_dashboard_url" {
  description = "Direct URL to the Cloud SQL (PostgreSQL) dashboard in the Google Cloud Console"
  value       = "https://console.cloud.google.com/monitoring/dashboards/builder/${google_monitoring_dashboard.cloud_sql_postgresql_dashboard.id}?project=${var.project_id}"
}

output "redis_dashboard_id" {
  description = "Resource identifier of the Redis (MemoryStore) monitoring dashboard"
  value       = google_monitoring_dashboard.redis_dashboard.id
}

output "redis_dashboard_url" {
  description = "Direct URL to the Redis dashboard in the Google Cloud Console"
  value       = "https://console.cloud.google.com/monitoring/dashboards/builder/${google_monitoring_dashboard.redis_dashboard.id}?project=${var.project_id}"
}

output "pubsub_dashboard_id" {
  description = "Resource identifier of the Pub/Sub monitoring dashboard"
  value       = google_monitoring_dashboard.pubsub_dashboard.id
}

output "pubsub_dashboard_url" {
  description = "Direct URL to the Pub/Sub dashboard in the Google Cloud Console"
  value       = "https://console.cloud.google.com/monitoring/dashboards/builder/${google_monitoring_dashboard.pubsub_dashboard.id}?project=${var.project_id}"
}