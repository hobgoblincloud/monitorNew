# ---------------------------------------------------------------------------------------------------------------------
#  METRIC SCOPES  (count-ed resource –> list)
# ---------------------------------------------------------------------------------------------------------------------
output "metric_scope_ids" {
  description = "List of monitored-project attachment IDs"
  value       = google_monitoring_monitored_project.monitored_project[*].id
}

output "metric_scope_names" {
  description = "List of fully-qualified monitored-project attachment names"
  value       = google_monitoring_monitored_project.monitored_project[*].name
}
# ---------------------------------------------------------------------------------------------------------------------
#  LOG SCOPES  (single resource)
# ---------------------------------------------------------------------------------------------------------------------
output "log_scope_id" {
  description = "ID of the log scope"
  value       = google_logging_log_scope.log_scope.id
}

output "log_scope_name" {
  description = "Fully-qualified name of the log scope"
  value       = google_logging_log_scope.log_scope.name
}

# If you also want the hosting project id, just use the variable you already have:
output "scope_host_project" {
  description = "GCP project that hosts both scopes"
  value       = var.project_id
}