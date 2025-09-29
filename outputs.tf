# outputs.tf

# Metric Scopes Module Outputs
output "metric_scope_ids" {
  description = "List of monitored-project attachment IDs"
  value       = module.metric_scopes.metric_scope_ids
}

output "metric_scope_names" {
  description = "List of fully-qualified monitored-project attachment names"
  value       = module.metric_scopes.metric_scope_names
}

output "log_scope_id" {
  description = "ID of the log scope"
  value       = module.metric_scopes.log_scope_id
}

output "log_scope_name" {
  description = "Fully-qualified name of the log scope"
  value       = module.metric_scopes.log_scope_name
}

output "scope_host_project" {
  description = "GCP project that hosts both scopes"
  value       = module.metric_scopes.scope_host_project
}

# Dashboards Module Outputs
output "cloud_run_dashboard_id" {
  description = "Resource identifier of the Cloud Run monitoring dashboard"
  value       = module.dashboards.cloud_run_dashboard_id
}

output "cloud_run_dashboard_url" {
  description = "Direct URL to the Cloud Run dashboard in the Google Cloud Console"
  value       = module.dashboards.cloud_run_dashboard_url
}

output "cloud_function_dashboard_id" {
  description = "Resource identifier of the Cloud Function monitoring dashboard"
  value       = module.dashboards.cloud_function_dashboard_id
}

output "cloud_function_dashboard_url" {
  description = "Direct URL to the Cloud Function dashboard in the Google Cloud Console"
  value       = module.dashboards.cloud_function_dashboard_url
}

output "cloud_sql_postgresql_dashboard_id" {
  description = "Resource identifier of the Cloud SQL (PostgreSQL) monitoring dashboard"
  value       = module.dashboards.cloud_sql_postgresql_dashboard_id
}

output "cloud_sql_postgresql_dashboard_url" {
  description = "Direct URL to the Cloud SQL (PostgreSQL) dashboard in the Google Cloud Console"
  value       = module.dashboards.cloud_sql_postgresql_dashboard_url
}

output "redis_dashboard_id" {
  description = "Resource identifier of the Redis (MemoryStore) monitoring dashboard"
  value       = module.dashboards.redis_dashboard_id
}

output "redis_dashboard_url" {
  description = "Direct URL to the Redis dashboard in the Google Cloud Console"
  value       = module.dashboards.redis_dashboard_url
}

output "pubsub_dashboard_id" {
  description = "Resource identifier of the Pub/Sub monitoring dashboard"
  value       = module.dashboards.pubsub_dashboard_id
}

output "pubsub_dashboard_url" {
  description = "Direct URL to the Pub/Sub dashboard in the Google Cloud Console"
  value       = module.dashboards.pubsub_dashboard_url
}

# # Uptime Checks Module Outputs
# output "uptime_notification_channel_id" {
#   description = "The ID of the email notification channel used for uptime checks"
#   value       = module.uptime_checks.notification_channel_id
# }

# output "cloud_run_uptime_check_id" {
#   description = "The ID of the Cloud Run uptime check"
#   value       = module.uptime_checks.cloud_run_uptime_check_id
# }

# output "cloud_function_uptime_check_id" {
#   description = "The ID of the Cloud Function uptime check"
#   value       = module.uptime_checks.cloud_function_uptime_check_id
# }

# output "cloud_run_uptime_check_name" {
#   description = "The full resource name of the Cloud Run uptime check"
#   value       = module.uptime_checks.cloud_run_uptime_check_name
# }

# output "cloud_function_uptime_check_name" {
#   description = "The full resource name of the Cloud Function uptime check"
#   value       = module.uptime_checks.cloud_function_uptime_check_name
# }

# # SLOs Module Outputs
# output "slo_notification_channel_id" {
#   description = "ID of the common email notification channel used for SLOs"
#   value       = module.slos.notification_channel_id
# }

# output "slo_notification_channel_name" {
#   description = "Fully-qualified name of the email notification channel used for SLOs"
#   value       = module.slos.notification_channel_name
# }

# output "cloud_run_custom_service_id" {
#   description = "Service id of the Cloud Run custom service"
#   value       = module.slos.cloud_run_custom_service_id
# }

# output "cloud_run_availability_slo_id" {
#   description = "SLO id of the Cloud Run availability SLO"
#   value       = module.slos.cloud_run_availability_slo_id
# }

# output "cloud_run_availability_slo_name" {
#   description = "Fully-qualified name of the Cloud Run availability SLO"
#   value       = module.slos.cloud_run_availability_slo_name
# }

# output "cloud_sql_custom_service_id" {
#   description = "Service id of the Cloud SQL custom service"
#   value       = module.slos.cloud_sql_custom_service_id
# }

# output "cloud_sql_availability_slo_id" {
#   description = "SLO id of the Cloud SQL availability SLO"
#   value       = module.slos.cloud_sql_availability_slo_id
# }

# output "cloud_sql_availability_slo_name" {
#   description = "Fully-qualified name of the Cloud SQL availability SLO"
#   value       = module.slos.cloud_sql_availability_slo_name
# }

# output "cloud_function_custom_service_id" {
#   description = "Service id of the Cloud Function custom service"
#   value       = module.slos.cloud_function_custom_service_id
# }

# output "cloud_function_availability_slo_id" {
#   description = "SLO id of the Cloud Function availability SLO"
#   value       = module.slos.cloud_function_availability_slo_id
# }

# output "cloud_function_availability_slo_name" {
#   description = "Fully-qualified name of the Cloud Function availability SLO"
#   value       = module.slos.cloud_function_availability_slo_name
# }

# output "slo_burn_rate_alert_policy_id" {
#   description = "ID of the SLO burn-rate alert policy"
#   value       = module.slos.slo_burn_rate_alert_policy_id
# }

# output "slo_burn_rate_alert_policy_name" {
#   description = "Fully-qualified name of the SLO burn-rate alert policy"
#   value       = module.slos.slo_burn_rate_alert_policy_name
# }

# # Alert Policies Module Outputs
# output "alert_notification_channel_id" {
#   description = "The ID of the email notification channel used for alerts"
#   value       = module.alert_policies.notification_channel_id
# }

# output "alert_policy_cloud_run_cpu_id" {
#   description = "The ID of the Cloud Run CPU alert policy"
#   value       = module.alert_policies.alert_policy_cloud_run_cpu_id
# }

# output "alert_policy_cloud_sql_cpu_id" {
#   description = "The ID of the Cloud SQL CPU alert policy"
#   value       = module.alert_policies.alert_policy_cloud_sql_cpu_id
# }

# output "alert_policy_redis_memory_id" {
#   description = "The ID of the Redis memory usage alert policy"
#   value       = module.alert_policies.alert_policy_redis_memory_id
# }

# output "alert_policy_pubsub_undelivered_messages_id" {
#   description = "The ID of the Pub/Sub undelivered messages alert policy"
#   value       = module.alert_policies.alert_policy_pubsub_undelivered_messages_id
# }

# # Logging Module Outputs
output "centralized_bucket_id" {
  description = "Full resource ID of the centralized log bucket"
  value       = module.logging.centralized_bucket_id
}

output "centralized_bucket_name" {
  description = "Short name of the centralized log bucket (without project prefix)"
  value       = module.logging.centralized_bucket_name
}

output "centralized_bucket_project" {
  description = "GCP project that hosts the centralized log bucket"
  value       = module.logging.centralized_bucket_project
}

output "centralized_bucket_location" {
  description = "Location of the centralized log bucket"
  value       = module.logging.centralized_bucket_location
}

output "centralized_bucket_retention_days" {
  description = "Log retention period configured on the bucket (days)"
  value       = module.logging.centralized_bucket_retention_days
}

output "centralized_bucket_analytics_enabled" {
  description = "Whether Log Analytics is enabled on the bucket"
  value       = module.logging.centralized_bucket_analytics_enabled
}

output "sink_ids" {
  description = "Map of source-project keys to sink IDs"
  value       = module.logging.sink_ids
}

output "sink_names" {
  description = "Map of source-project keys to sink names"
  value       = module.logging.sink_names
}

output "sink_writer_identities" {
  description = "Map of source-project keys to the service-account emails that sinks use to write"
  value       = module.logging.sink_writer_identities
}

output "sink_filter" {
  description = "Filter expression applied to all sinks (e.g. severity>=ERROR)"
  value       = module.logging.sink_filter
}

output "bucket_writer_members" {
  description = "List of service accounts granted roles/logging.bucketWriter on the destination project"
  value       = module.logging.bucket_writer_members
}

output "logging_summary" {
  description = "Human-readable summary of the logging configuration"
  value       = module.logging.summary
}