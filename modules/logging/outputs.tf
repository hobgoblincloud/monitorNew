# outputs.tf
# ---------------------------------------------------------------------------------------------------------------------
#  CENTRALIZED LOGGING BUCKET
# ---------------------------------------------------------------------------------------------------------------------
output "centralized_bucket_id" {
  description = "Full resource ID of the centralized log bucket"
  value       = google_logging_project_bucket_config.centralized_logs_bucket.id
}

output "centralized_bucket_name" {
  description = "Short name of the centralized log bucket (without project prefix)"
  value       = google_logging_project_bucket_config.centralized_logs_bucket.bucket_id
}

output "centralized_bucket_project" {
  description = "GCP project that hosts the centralized log bucket"
  value       = google_logging_project_bucket_config.centralized_logs_bucket.project
}

output "centralized_bucket_location" {
  description = "Location of the centralized log bucket"
  value       = google_logging_project_bucket_config.centralized_logs_bucket.location
}

output "centralized_bucket_retention_days" {
  description = "Log retention period configured on the bucket (days)"
  value       = google_logging_project_bucket_config.centralized_logs_bucket.retention_days
}

output "centralized_bucket_analytics_enabled" {
  description = "Whether Log Analytics is enabled on the bucket"
  value       = google_logging_project_bucket_config.centralized_logs_bucket.enable_analytics
}

# ---------------------------------------------------------------------------------------------------------------------
#  LOG SINKS
# ---------------------------------------------------------------------------------------------------------------------
output "sink_ids" {
  description = "Map of source-project keys to sink IDs"
  value       = { for k, v in google_logging_project_sink.project_sink : k => v.id }
}

output "sink_names" {
  description = "Map of source-project keys to sink names"
  value       = { for k, v in google_logging_project_sink.project_sink : k => v.name }
}

output "sink_writer_identities" {
  description = "Map of source-project keys to the service-account emails that sinks use to write"
  value       = { for k, v in google_logging_project_sink.project_sink : k => v.writer_identity }
}

output "sink_filter" {
  description = "Filter expression applied to all sinks (e.g. severity>=ERROR)"
  value       = "severity>=ERROR"
}

# ---------------------------------------------------------------------------------------------------------------------
#  IAM
# ---------------------------------------------------------------------------------------------------------------------
output "bucket_writer_members" {
  description = "List of service accounts granted roles/logging.bucketWriter on the destination project"
  value       = [for k, v in google_project_iam_member.bucket_writer : v.member]
}

# ---------------------------------------------------------------------------------------------------------------------
#  SUMMARY
# ---------------------------------------------------------------------------------------------------------------------
output "summary" {
  description = "Human-readable summary of the logging configuration"
  value = {
    destination_project     = var.destination_project
    source_projects         = keys(var.source_projects)
    centralized_bucket      = google_logging_project_bucket_config.centralized_logs_bucket.bucket_id
    retention_days          = google_logging_project_bucket_config.centralized_logs_bucket.retention_days
    analytics_enabled       = google_logging_project_bucket_config.centralized_logs_bucket.enable_analytics
    sink_count              = length(google_logging_project_sink.project_sink)
  }
}